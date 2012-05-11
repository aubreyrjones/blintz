class BlintzLexerSpec < Dhaka::LexerSpecification
  operators = {
    ',' => ',',
    '(' => '\)',
    ')' => '\(',
    '+' => '+',
    '/' => '\/',
  }
  
  keywords = %w|def struct if elsif else return |
  
  operators.each do |operator, regex|
    for_pattern(regex) do
      create_token(operator)
    end
  end
    
  
end