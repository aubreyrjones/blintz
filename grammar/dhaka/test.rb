class String
  def collect(&block)
    return each_char.collect &block
  end
end

require 'dhaka'
require './BlintzGrammar'
parser = Dhaka::Parser.new(BlintzGrammar)
File.open('blintz_parser.rb', 'w') {|file| file << parser.compile_to_ruby_source_as(:BlintzParser)}
File.open('blintz_parser.dot', 'w') {|file| file << parser.to_dot}
