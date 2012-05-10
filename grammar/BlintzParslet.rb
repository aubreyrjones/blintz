require 'parslet'

module BlintzGrammar
  class Parser < Parslet::Parser
    
    # Noise
    rule(:space) { match[' \\n'].repeat(1) }
    rule(:space?) { space.maybe }
      
    # Literals
    rule(:hex) { str('0x') >> match['0-9a-fA-F'].repeat(1).as(:hex_literal)}
    rule(:decimal) { match['0-9'].repeat(1).as(:decimal_literal)}
    rule(:string) do 
      str('"') >> (str('\\') >> any | str('"').absnt? >> any).repeat.as(:string_literal) >> str('"')
    end
    
    rule(:literal) { (hex | decimal | string) >> space? }
    
    # Names
    rule(:identifier) { (match['a-z_'] >> match['a-zA-Z0-9_'].repeat >> match['?'].maybe).repeat(1).as(:identifier) }
    rule(:type_name) { (match['A-Z_'] >> match['a-zA-Z0-9_'].repeat >> match['?'].maybe).repeat(1).as(:type_name) }
      
    # Expressions
    rule(:simple_expression) do
      sum 
    end
    
    rule(:value) do
      identifier | literal | (str('(') >> simple_expression >> str(')')).maybe
    end
    
    rule(:product) do
      value >> (match['*/'].as(:operator) >> value.as(:rhs)).maybe
    end
    
    rule(:sum) do
      product.as(:lhs) >> (match['\\-+'].as(:operator) >> product.as(:rhs)).maybe 
    end
    
    root :simple_expression
  end
end