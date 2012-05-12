
def recursive_statement_add(list, mil_node, production_name)
  prod_name = mil_node.production.to_s
  
  if prod_name =~ production_name
    if mil_node.child_nodes[0].production.to_s =~ production_name
      recursive_statement_add(list, mil_node.child_nodes[0], production_name)
    else
      list << mil_node.child_nodes[0]
    end
    
    if mil_node.child_nodes.size > 1
      list << mil_node.child_nodes[1]
    end
  end
end

module BlintzAst
  module Dot #:nodoc:
    class Digraph #:nodoc:
      def initialize(node_attributes = {})
        @result = ["digraph x {"]
        @result << %(node #{dotify_hash(node_attributes)})
        yield(self)
        @result << '}'
      end

      def node(obj, attributes = {})
        @result << "#{obj.object_id} #{dotify_hash(attributes)}"
      end

      def edge(src, dest, attributes = {})
        @result << "#{src.object_id} -> #{dest.object_id} #{dotify_hash(attributes)}"
      end

      def dotify_hash hash
        sorted_key_value_pairs = hash.collect {|key, value| [key.to_s, value.to_s]}.sort
        hash.empty? ? "" : '[' + sorted_key_value_pairs.collect {|key, value| "#{key}=#{value.to_s.inspect}"}.join(' ') + ']'
      end

      def to_dot
        @result.join("\n")
      end
    end
  end
  
  def self.to_dot(node)
    Dot::Digraph.new(:fontsize => 10, :shape => :box, :size => 5) do |g|
      node.to_dot(g)
    end.to_dot
  end
  
  module NodeType
    def tag!(*blintz_tags)
      if @bt.nil?
        @bt = []
      end
      
      @bt.concat(blintz_tags)
      self
    end
    
    def tag
      if @bt.nil? || @bt.empty?
        return :skip
      end
      @bt[0]
    end
    
    def tagged?(tag_name)
      return tag_name == tag
    end
    
    def tags
      @bt
    end
    
    def tag_str
      if @bt.nil? || @bt.empty?
        return nil
      end
      
      '{' + @bt.join(', ') + '}'
    end    
  end
  
  class Node
    include NodeType
    attr_accessor :attributes
    
    def initialize(node_type_list, attr_hash={})
      @bt = [*node_type_list]
      @attributes = attr_hash
    end
    
    def rec_graph(graph, obj, edge_label)
      graph.edge(self, obj, :label => edge_label)
      if obj.respond_to? :to_dot
        obj.to_dot(graph)
      else
        graph.node(obj, :label => obj.to_s)
      end
    end
    
    def to_dot(graph)
      graph.node(self, :label => "[#{tags.join(', ')}]", :color => 'gold')
      attributes.entries.each do |k, v|
        if v.is_a? Array
          v.each do |s|
            rec_graph(graph, s, k.to_s)
          end
          return
        end
        
        rec_graph(graph, v, k.to_s)
      end
    end
  end
  
  module LeafNodeMixin
    def blintz_collect
      case self.token.symbol_name
      when 'NAME_LITERAL'
        return Node.new([:literal, :name], :value => self.token.value)
      end
      
      return Node.new(:leaf, :token => self.to_s)
    end
  end
  
  module BlintzParseNodeMixin
 
    def skip_get(node)
      if node.is_a? Fixnum
        node = child_nodes[node]
      end

      unless node.tagged? :skip
        return node
      end
      
      if node.is_a? Dhaka::ParseTreeLeafNode
        return node
      end
        
      if node.child_nodes.nil? || node.child_nodes.empty?
        return nil
      end
      
      return skip_get(node.child_nodes[0])
    end
    
    def self_type_node(attr={})
      return Node.new(tags, attr)
    end
    
    def empty_nil(list)
      if list.nil?
        return []
      end
      return list
    end
    
    def blintz_collect
      puts "Collecting: " + tag.to_s
      
      if tagged? :skip
        return skip_get(0)
      end

      case self.tag
      when :module
        return self_type_node(:declarations => skip_get(0).blintz_collect)
      when :declarations
        return child_nodes.map {|n| skip_get(n).blintz_collect }
      when :def
        return self_type_node(:name => skip_get(1).blintz_collect,
                              :statement => skip_get(2).blintz_collect)
      when :compound_statement
        return self_type_node(:subs => child_nodes.map {|n| n.blintz_collect})
      when :assign
        return self_type_node(:lhs => skip_get(0).blintz_collect,
                              :rhs => skip_get(2).blintz_collect)
      when :if
        return self_type_node(:condition => skip_get(2).blintz_collect,
                              :statement => skip_get(4).blintz_collect,
                              :elsif     => empty_nil(skip_get(5)),
                              :else      => skip_get(6))
      when :null_statement
        return self_type_node
      when :expr
        return self_type_node #todo, obviously
      end
      puts "what?"
      exit 1
    end
  end
end
