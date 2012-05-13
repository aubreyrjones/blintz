require 'dhaka'
require_relative 'blintz_ast'
require './BlintzGrammar'
require 'pp'
parser = Dhaka::Parser.new(BlintzGrammar)
File.open('blintz_parser.rb', 'w') {|file| file << parser.compile_to_ruby_source_as(:BlintzParser)}

#File.open('../../lib/blintz/ast/blintz_parser.dot', 'w') {|file| file << parser.to_dot}
#system('dot -Tjpg blintz_parser.dot > parser_graph.jpg')

require './BlintzLexerSpec'
require './blintz_parser'
lexer = Dhaka::Lexer.new(BlintzLexerSpec)
File.open('blintz_lexer.rb', 'w') {|file| file << lexer.compile_to_ruby_source_as(:BlintzLexer)}
