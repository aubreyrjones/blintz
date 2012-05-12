module BlintzAst
  class Node
    attr_accessor :node_type
    attr_accessor :attributes
    
    def initialize(node_type_token, attr_hash={})
      node_type = node_type_token.to_sym
      attributes = attr_hash
    end
    
    def to_dot(graph)
      graph.node(self, :label => node_type)
      attributes.entries do |k, v|
        graph.edge(self, v)
        if (v.is_a? Node)
          v.to_dot(graph)
        else
          graph.node(v, :label => v.to_s)
        end
      end
    end
  end
  
# methods for mapping data
  
  def self.func_def(func_name, statement)
    Node.new(:function_def, :statement => statement)
  end
end
