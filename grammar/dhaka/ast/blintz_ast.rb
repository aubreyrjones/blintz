module BlintzAst
  class Node
    attr_accessor :node_type
    attr_accessor :attributes
    
    def initialize(node_type_token, attr_hash={})
      node_type = node_type_token.to_sym
      attributes = attr_hash
    end
  end
  
# methods for mapping data
  
  def self.func_def(func_name, statement)
    Node.new(:function_def, :statement => statement)
  end
end
