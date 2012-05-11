class BlintzLexerSpec < Dhaka::LexerSpecification

  id_remainder = '[a-zA-Z0-9_?]+'

  keywords = %w| return def if elsif else | #  struct  

  %w| ( ) { } = - ! > < , + *   ; / ^ |.each do |char|
    for_symbol(char) do
      create_token(char)
    end
  end

  keywords.each do |keyword|
    for_pattern(keyword) do
      create_token(keyword)
    end
  end
  
  for_pattern("[a-z_]+(#{id_remainder})?") do
    create_token 'NAME_LITERAL'
  end

  for_pattern("[A-Z]+(#{id_remainder})?") do
    create_token 'TYPE_LITERAL'
  end
  
  for_pattern('\d*(\.\d+)?') do
      create_token('NUMBER_LITERAL')
  end
  
  for_pattern('\s+') do
    #nop
  end
  
end
