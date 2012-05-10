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
    rule(:name) {type_name | identifier}
      
    # Operators
    rule(:negate) { str('-') >> space? }
    rule(:bit_not) { str('~') >> space? }
    rule(:logical_not) { str('~') >> space? }
    rule(:reference) { str('&') >> space? }
    rule(:product) { match['*/'] >> space? }
    rule(:sum) { match['+\\-'] >> space? }
    rule(:logical_binary) { (str('&&') | str('||')) >> space? }
    rule(:bit_binary) { (str('&') | str('|')) >> space? }

    # Expressions
    rule(:value) { name | literal }
    rule(:unary_op) { (reference | negate | bit_not | logical_not).as(:operator) >> term.as(:rhs) }
    rule(:product_op) { product.as(:operator) >> term.as(:rhs) }
    rule(:sum_op) { sum.as(:operator) >> term.as(:rhs) }
    rule(:logical_op) { logical_binary.as(:operator) >> term.as(:rhs) }
    rule(:bit_op) { bit_binary.as(:operator) >> term.as(:rhs) }

    rule(:term) do 
     value.as(:value) | str('(') >> expression.as(:value) >> str(')') | unary_op.as(:value) | product_op.as(:value) | sum_op.as(:value) |
        logical_op.as(:value) | bit_op.as(:value)
    end

#    rule(:binary_expansion) { binary_op.as(:operator) >> term.as(:arg) }
    rule(:expression)  { term >> term.repeat(0).as(:rhs) }
    
    root :expression
  end
end
