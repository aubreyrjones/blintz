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
      @module_name = File.basename(filename)
    end
    
    def parse
      lex_result = nil
      
      # lex the file
      File.open(@filename, 'r') do |f|
        lex_result = BlintzLexer.lex(f)
      end
      
      # parse the file, maybe getting an error
      parse_result = BlintzParser.parse(lex_result)
      if parse_result.is_a? Dhaka::TokenizerErrorResult
        puts parse_result
        exit 1
      end

      if parse_result.is_a? Dhaka::ParseErrorResult
        puts parse_result
        exit 1
      end
      
      @parse_tree = parse_result.parse_tree
      @ast = parse_result.parse_tree.blintz_collect
    end
    
    def write_dottable(dottable, suffix, dir)
      base_file_name = module_name + ".#{suffix}" + ".dot"
      
      file = File.join(dir, filename)
      
      File.open(file, 'w') do |f|
        f << BlintzAst::to_dot(dottable)
      end
      
      system("dot -Tjpg #{file} > #{file}.jpg")

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
