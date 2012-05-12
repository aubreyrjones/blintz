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

BIG_TEST = "
  def test {
    if (a) return b;
    
    if (test_var) {
    }
    elsif (test_var2) return 3;
    else {
    }
    @test_array = test_var;
  }
  
  def test2 {
    if (test_var) {
      test_var = 2*2/3+2;
    }
    elsif (test_var2) return 3;
    elsif (test_var2) return 3;
    elsif (test_var2) return 3;
    else {
      x = y;
    }
  }
  
  "

lex_result = BlintzLexer.lex("
  
  def test {
    a = b;
  }

")

parse_result = BlintzParser.parse(lex_result)
if parse_result.is_a? Dhaka::TokenizerErrorResult
  puts parse_result.inspect
  exit 1
end

if parse_result.is_a? Dhaka::ParseErrorResult
  puts parse_result.inspect
  exit 1
end

blintz_result = parse_result.parse_tree.blintz_collect

#pp blintz_result

File.open('parse_tree.dot', 'w') do |file|
  file << parse_result.to_dot
end

File.open('ast.dot', 'w') do |file|
  file << BlintzAst::to_dot(blintz_result)
end

system('dot -Tjpg parse_tree.dot > tree.jpg')
system('dot -Tjpg ast.dot > ast.jpg')

$result = parse_result
