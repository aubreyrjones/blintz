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
    rule(:logical_not) { str('!') >> space? }
    rule(:reference) { str('&') >> space? }
    rule(:product) { match['*/'] >> space? }
    rule(:sum) { match['+\\-'] >> space? }
    rule(:logical_binary) { (str('&&') | str('||')) >> space? }
    rule(:bit_binary) { (str('&') | str('|')) >> space? }

    # Expressions
    rule(:value) { name | literal }
    rule(:unary_op) { (reference | negate | bit_not | logical_not).as(:operator) >> term.as(:value) }
    rule(:product_op) { product.as(:operator) }
    rule(:sum_op) { sum.as(:operator) }
    rule(:logical_op) { logical_binary.as(:operator) }
    rule(:bit_op) { bit_binary.as(:operator) }

    rule(:binary_op) { product_op | sum_op | logical_op | bit_op }

    rule(:paren_expression) { str('(') >> space? >> expression.as(:sub_expr) >> space? >> str(')') }

    rule(:term) do 
      value.as(:value) | paren_expression | unary_op | ( binary_op >> expression.as(:rhs) )
    end

#    rule(:binary_expansion) { binary_op.as(:operator) >> term.as(:arg) }
    rule(:expression)  { term >> term.maybe }
    
    root :expression
  end
end
