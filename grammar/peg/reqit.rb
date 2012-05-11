require './BlintzParslet.rb'
require 'pp'

$p = BlintzGrammar::Parser.new

def parse(str)
  $p.parse(str)
end

def ppp(str)
  pp parse(str)
end


