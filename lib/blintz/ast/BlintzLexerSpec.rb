class BlintzLexerSpec < Dhaka::LexerSpecification

  id_remainder = '[a-zA-Z0-9_?]+'

  keywords = %w| return def if elsif else var import while next | #  struct  

  for_pattern('&&') do
    create_token('LOG_AND')
  end
  
  for_pattern('\\|\\|') do
    create_token('LOG_OR')
  end
  
  for_pattern('&') do
    create_token('BIT_AND')
  end
  
  for_pattern('\\|') do
    create_token('BIT_OR')
  end
  
  %w| @ ( ) { } [ ] # = - ! > < , + *   ; / ^ |.each do |char|
    for_symbol(char) do
      create_token(char)
    end
  end

  keywords.each do |keyword|
    for_pattern(keyword) do
      create_token(keyword)
    end
  end
  
  for_pattern('"([^"\\\\]*(\\\\.[^"\\\\]*)*)"') do
    create_token 'STRING_LITERAL'
  end
  
  for_pattern("[a-z_]+(#{id_remainder})?") do
    create_token 'NAME_LITERAL'
  end

  for_pattern("[A-Z]+(#{id_remainder})?") do
    create_token 'TYPE_LITERAL'
  end
  
  for_pattern('0x[0-9a-fA-F]+') do
      create_token('HEX_LITERAL')
  end
  
  for_pattern('\d*(\.\d+)?') do
      create_token('DECIMAL_LITERAL')
  end
  
  for_pattern('\s+') do
    #nop
  end
  
end
