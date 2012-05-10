require 'treetop'
require_relative '../grammar/Blintz'

module Blintz
  class Parser
    def init(filename)
      @parse_tree = {}
      @parse_tree[:filename] = filename
        
      
    end
  end
end