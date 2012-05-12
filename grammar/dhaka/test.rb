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
  import \"testing\";
  def test {
    var a;
    var 12 @arr;
    if (a) return 6;
    
    if (test_var) {
    }
    elsif (test_var2) return 3;
    else {
    }
    @test_array = test_var;
  }
  
  def test2 {
    if (test_var) {
      test_var = 2+2/3+2;
    }
    elsif (test_var2) return 3;
    elsif (test_var2) return 3;
    elsif (test_var2) return 3;
    else {
      x = y;
    }
  }
  
  "

LITTLE_TEST = "
  
  def test {
    a = b + 2 + 0x10;
    b = 16 + 0x10;
    
    if (b) {
      c = d;
    }
    elsif (e) f = g;
    elsif (r) {
      b = soup;
    }
    else h = j;
  }

"

lex_result = BlintzLexer.lex(BIG_TEST)

parse_result = BlintzParser.parse(lex_result)
if parse_result.is_a? Dhaka::TokenizerErrorResult
  puts parse_result.inspect
  exit 1
end

if parse_result.is_a? Dhaka::ParseErrorResult
  puts parse_result.inspect
  exit 1
end

#pp blintz_result

File.open('parse_tree.dot', 'w') do |file|
  file << parse_result.to_dot
end

system('dot -Tjpg parse_tree.dot > tree.jpg')


blintz_result = parse_result.parse_tree.blintz_collect

File.open('ast.dot', 'w') do |file|
  file << BlintzAst::to_dot(blintz_result)
end

system('dot -Tjpg ast.dot > ast.jpg')

$result = parse_result
