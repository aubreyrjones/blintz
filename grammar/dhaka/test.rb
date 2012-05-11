class String
  def collect(&block)
    return each_char.collect &block
  end
end

require 'dhaka'
require './BlintzGrammar'
require 'pp'
parser = Dhaka::Parser.new(BlintzGrammar)
File.open('blintz_parser.rb', 'w') {|file| file << parser.compile_to_ruby_source_as(:BlintzParser)}
File.open('blintz_parser.dot', 'w') {|file| file << parser.to_dot}

#system('dot -Tjpg blintz_parser.dot > parser_graph.jpg')

require './BlintzLexerSpec'
require './blintz_parser'
lexer = Dhaka::Lexer.new(BlintzLexerSpec)
File.open('blintz_lexer.rb', 'w') {|file| file << lexer.compile_to_ruby_source_as(:BlintzLexer)}
  
require './blintz_lexer.rb'
lex_result = BlintzLexer.lex("
  def test { 
    if (b) {
        a = 6;
    }
    elsif (a) {
        b = 128;
    }
    elsif (c) 
        c = 256;
    else 
        c = 8;
    return 8;
  } ")

parse_result = BlintzParser.parse(lex_result)
if parse_result.is_a? Dhaka::TokenizerErrorResult
  puts parse_result.inspect
  exit 1
end

if parse_result.is_a? Dhaka::ParseErrorResult
  puts parse_result.inspect
  exit 1
end

pp parse_result.parse_tree

File.open('parse_tree.dot', 'w') do |file|
  file << parse_result.to_dot
end

system('dot -Tjpg parse_tree.dot > tree.jpg')

$result = parse_result
