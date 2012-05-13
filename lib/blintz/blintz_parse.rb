require 'dhaka'
require_relative 'ast/blintz_ast'
require_relative 'ast/BlintzGrammar'
require_relative 'ast/BlintzLexerSpec'
require_relative 'ast/blintz_parser'
require_relative 'ast/blintz_lexer'

module Blintz
  class Parser
    attr_reader :filename, :module_name, :ast, :parse_tree
    
    def initialize(filename)
      @filename = filename
      @module_name = File.basename(filename)[0..-5]
    end
    
    def parse
      source = nil
      File.open(@filename, 'rb') do |f|
        source = f.read
      end
      
      # lex the file
      lex_result = BlintzLexer.lex(source)
      # parse the file, maybe getting an error
      parse_result = BlintzParser.parse(lex_result)
      if parse_result.is_a? Dhaka::TokenizerErrorResult
        puts parse_result.inspect
        exit 1
      end

      if parse_result.is_a? Dhaka::ParseErrorResult
        puts parse_result.inspect
        exit 1
      end
      
      @parse_tree = parse_result.parse_tree
      @ast = parse_result.parse_tree.blintz_collect
    end
    
    def write_dottable(dottable, suffix, dir)
      base_file_name = module_name + ".#{suffix}" + ".dot"
      
      file = File.join(dir, base_file_name)
      
      File.open(file, 'w') do |f|
        f << BlintzAst::to_dot(dottable)
      end
      
      system("dot -Tjpg #{file} > #{file[0..-5]}.jpg")

    end

    def parse_graph(dir)
      write_dottable(parse_tree, "parse", dir)
    end
    
    def ast_graph(dir)
      write_dottable(ast, "ast", dir)
    end
    
    def graph_both(dir)
      parse_graph(dir)
      ast_graph(dir)
    end
  end
end
