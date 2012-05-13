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
      return true if tag == tag_name
      tags.include?(tag_name)
    end
    
    def tags
      @bt || []
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
      if obj.respond_to? :to_dot
        graph.edge(self, obj, :label => edge_label, :color => 'black', :fontsize => 8)
        obj.to_dot(graph)
      else
        s = obj.to_s
        graph.edge(self, s, :label => edge_label, :color => 'gray', :fontsize => 8)
        graph.node(s, :label => s, :color => 'blue')
      end
    end
    
    def to_dot(graph)
      color = tagged?(:leaf) ? 'red' : 'gold'
      graph.node(self, :label => "[#{tags.join(', ')}]", :color => color)
      attributes.entries.each do |k, v|
        if v.is_a? Array
          v.each do |s|
            rec_graph(graph, s, k.to_s)
          end
        else
          rec_graph(graph, v, k.to_s)
        end
      end
    end
  end
  
  module LeafNodeMixin
    def blintz_collect
      case self.token.symbol_name
      when 'NAME_LITERAL'
        return self.token.value
        # return Node.new([:literal, :name], :value => self.token.value)
      when 'DECIMAL_LITERAL'
        # return Node.new([:literal, :numeric], :value => self.token.value.to_i)
        return self.token.value.to_i
      when 'HEX_LITERAL'
        # return Node.new([:literal, :numeric], :value => self.token.value[2..-1].to_i(16))
        return self.token.value[2..-1].to_i(16)
      when 'STRING_LITERAL'
        return self.token.value[1..-2] 
      end
      
      return Node.new(:leaf, :token => self.to_s)
    end
  end
  
  module BlintzParseNodeMixin
 
    def ellide
      child_nodes[0]
    end
 
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
      return Node.new(@bt, attr)
    end
    
    def empty_nil(list)
      if list.nil?
        return []
      end
      return list
    end
    
    def recursive_list(list, prod_regex)
      if child_nodes.nil?
        list << self
      end
      
      prod_name = production.to_s
      
      if prod_name =~ prod_regex
        child_nodes[0].recursive_list(list, prod_regex)
        if child_nodes.size > 1
          child_nodes[1].recursive_list(list, prod_regex)
        end
      else
        list << self
      end
    end
    
    def rec_list_compact(root_node, prod_regex)
      new_kids = []
      root_node.recursive_list(new_kids, prod_regex)
      child_nodes.clear
      child_nodes.concat(new_kids)
      self
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
        return self_type_node(:name => skip_get(1).blintz_collect(),
                              :params => skip_get(3).blintz_collect(),
                              :statement => skip_get(5).blintz_collect())
      when :formal_params
        return child_nodes.map {|n| skip_get(n).blintz_collect}
      when :param
        if tagged? :simple
          return self_type_node(:name => skip_get(0).blintz_collect)
        end
      when :compound_statement
        return self_type_node(:subs => child_nodes.map {|n| skip_get(n).blintz_collect})
      when :assign
        return self_type_node(:dest => skip_get(0).blintz_collect,
                              :source => skip_get(2).blintz_collect)
      when :import
        return self_type_node(:dep_mod => skip_get(1).blintz_collect)
      when :if
        a = {
            :condition => skip_get(2).blintz_collect,
            :statement => skip_get(4).blintz_collect,
            :elsif     => skip_get(5) ? skip_get(5).blintz_collect : nil,
            :else      => skip_get(6) ? skip_get(6).blintz_collect : nil
            }
          
        return self_type_node(a)
      when :elsif
        return self_type_node(:condition => skip_get(2).blintz_collect,
                              :statement => skip_get(4).blintz_collect)
      when :elsif_list
        return child_nodes.map {|n| skip_get(n).blintz_collect}
      when :else
        return self_type_node(:statement => skip_get(1).blintz_collect)
      when :return
        # return without value
        return self_type_node if tagged? :simple
        # return with value
        return self_type_node(:value => skip_get(1).blintz_collect)
      when :null_statement
        return self_type_node
      when :while
        return self_type_node(:expr => skip_get(2).blintz_collect,
                              :statement => skip_get(4).blintz_collect,
                              :next => skip_get(5) ? skip_get(5).blintz_collect : nil)
      when :next
        return self_type_node()
      when :expr
        # outfix operations
        if tagged? :paren
          return skip_get(1).blintz_collect
        elsif tagged? :deref
          return self_type_node(:value => skip_get(1).blintz_collect)
        elsif tagged? :array_index
          return self_type_node(:name => skip_get(1).blintz_collect,
                                :index => skip_get(3).blintz_collect)
        end
        
        # literal, unary, or infix
        if child_nodes.size == 1
          return self_type_node(:value => skip_get(0).blintz_collect)
        elsif child_nodes.size == 2
          return self_type_node(:value => skip_get(1).blintz_collect)
        elsif child_nodes.size == 3
          return self_type_node(:lhs => skip_get(0).blintz_collect,
                                :rhs => skip_get(2).blintz_collect)
        end
      when :var
        if tagged? :simple
          return self_type_node(:name => skip_get(0).blintz_collect)
        elsif tagged? :array
          return self_type_node(:size => skip_get(0).blintz_collect,
                                :name => skip_get(2).blintz_collect)
        end
      else
        return self
      end
    end
  end
end


class Dhaka::ParseTreeCompositeNode
  include BlintzAst::BlintzParseNodeMixin
  include BlintzAst::NodeType
  
  def to_dot(graph)
    graph.node(self, :label => tag_str || production.to_s + "{#{tag}}", :color => 'red')
    child_nodes.each do |child|
      graph.edge(self, child)
      child.to_dot(graph)
    end
  end
  
end

class Dhaka::ParseTreeLeafNode
  include BlintzAst::LeafNodeMixin
  include BlintzAst::NodeType
end
