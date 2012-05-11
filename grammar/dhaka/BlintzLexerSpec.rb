class BlintzLexerSpec < Dhaka::LexerSpecification
  
  keywords = %w| return def | #  struct if elsif else 

  %w| = - ! > < , + * ( ) { } ; / ^ |.each do |char|
    for_symbol(char) do
      create_token(char)
    end
  end
  
  for_pattern('\w+') do
    if keywords.include? current_lexeme.value
      create_token current_lexeme.value
    else
      create_token 'WORD_LITERAL'
    end
  end
  
  for_pattern('\d*(\.\d+)?') do
      create_token('NUMBER_LITERAL')
  end

  
  for_pattern('\s+') do
    #nop
  end
  
end