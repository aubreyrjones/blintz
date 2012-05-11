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
  
  keywords.each do |keyword|
    for_pattern(keyword) do
      create_token(keyword)
    end
  end
  
  
end