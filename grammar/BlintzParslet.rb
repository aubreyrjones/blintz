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
    rule(:identifier) { (match['a-z_'] >> match['a-zA-Z0-9_'].repeat >> match['?'].maybe) }
    rule(:type_name) { (match['A-Z'] >> match['a-zA-Z0-9_'].repeat >> match['?'].maybe) }
    rule(:name) {(type_name.as(:typename) | identifier.as(:identifier)) >> space?}
      
    # Operators
    rule(:negate) { str('-').as(:unary_op) >> space? }
    rule(:bit_not) { str('~').as(:unary_op) >> space? }
    rule(:logical_not) { str('!').as(:unary_op) >> space? }
    rule(:reference) { str('&').as(:unary_op) >> space? }
    rule(:product) { match['*/'].as(:op) >> space? }
    rule(:sum) { match['+\\-'].as(:op) >> space? }
    rule(:logical_binary) { (str('&&') | str('||')).as(:op) >> space? }
    rule(:bit_binary) { (str('&') | str('|')).as(:op) >> space? }

    # Expressions
    rule(:value) { name | literal }
    rule(:unary_op) { (reference | negate | bit_not | logical_not) >> term }
    rule(:product_op) { product }
    rule(:sum_op) { sum }
    rule(:logical_op) { logical_binary }
    rule(:bit_op) { bit_binary }

    rule(:binary_op) { product_op | sum_op | logical_op | bit_op }

    rule(:paren_expression) { str('(') >> space? >> expression.as(:value) >> space? >> str(')') >> space? }
    rule(:deref_expression) { str('[') >> space? >> expression.as(:deref_expr) >> space? >> str(']') >> space? }

    rule(:term) do 
      value.as(:value) | paren_expression | deref_expression | unary_op | ( binary_op >> expression.as(:rhs) )
    end

    rule(:expression)  { term >> term.maybe }
    
    root :expression
  end
end
