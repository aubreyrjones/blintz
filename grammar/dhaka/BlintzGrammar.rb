require 'dhaka'

def recursive_statement_add(list, mil_node, production_name)
  prod_name = mil_node.production.to_s
  
  if prod_name =~ production_name
    if mil_node.child_nodes[0].production.to_s =~ production_name
      recursive_statement_add(list, mil_node.child_nodes[0], production_name)
    else
      list << mil_node.child_nodes[0]
    end
    
    if mil_node.child_nodes.size > 1
      list << mil_node.child_nodes[1]
    end
  end
end


module BlintzParseNodeMixin
  def bt(*blintz_tags)
    if @bt.nil?
      @bt = []
    end
    
    @bt.concat(blintz_tags)
    self
  end
  
  def tag
    if @bt.nil? || @bt.empty?
      return :skip
    end
    @bt[0]
  end
  
  def tags
    @bt
  end
  
  def tag_str
    if @bt.nil? || @bt.empty?
      return nil
    end
    
    '{' + @bt.join(', ') + '}'
  end
end

class Dhaka::ParseTreeCompositeNode
  include BlintzParseNodeMixin

  
  def to_dot(graph)
    graph.node(self, :label => tag_str || production.to_s + "{#{tag}}")
    child_nodes.each do |child|
      graph.edge(self, child)
      child.to_dot(graph)
    end
  end
  
end

class Dhaka::ParseTreeLeafNode
  include BlintzParseNodeMixin
end

class BlintzGrammar < Dhaka::Grammar

  for_symbol(Dhaka::START_SYMBOL_NAME) do
    blintz_module           %w| module_statements |
  end
  
  for_symbol('module_statements') do
    no_declarations         %w| |
    
    declaration_list       %w| globals_list |                     do
      
      retval = nil
      if child_nodes[0].production.to_s =~ /^global_declaration/
        k = child_nodes[0]
        child_nodes.clear << k
      else
        new_kids = []
        recursive_statement_add(new_kids, child_nodes[0], /^multiple_declaration/)
        child_nodes.clear
        child_nodes.concat(new_kids)
      end
      bt(:declarations)
    end
    
  end

  
  for_symbol('globals_list') do
    single_declaration      %w| global_declaration |              do child_nodes[0]; end
    multiple_declaration    %w| globals_list global_declaration | 
  end

  for_symbol('global_declaration') do
    import                %w| import string_literal ; |           do bt(:import); end
    global_function_def   %w| function_def |                      do child_nodes[0]; end
  end
  
  for_symbol('function_def') do
    f_def                 %w| def NAME_LITERAL statement |       do bt(:def); end
  end
  
  for_symbol('statement') do
    null_statement      %w| { } |
    
    
    simple_statement    %w| primary_statement |                  do bt(:simple_statement) end
    
    compound_statement  %w| { statement_list } |                 do

      if child_nodes[1].production.to_s =~ /simple_statement statement/
        kid = child_nodes[1]
        child_nodes.clear
        child_nodes << kid
      else
        new_kids = []
        recursive_statement_add(new_kids, child_nodes[1], /multiple_items statement_list/)
        child_nodes.clear
        child_nodes.concat(new_kids)      
      end
      bt(:compound_statement)
    end
  end

  
  for_symbol('statement_list') do
    statement_item      %w| statement |                 do child_nodes[0]; end
    multiple_items      %w| statement_list statement|
  end

  
  for_symbol('primary_statement') do
    if_statement       %w| if ( expr ) statement elsif_list else_clause |     do bt(:if); end
    
    assign_statement   %w| expr = expr ; |              do bt(:assign); end
    return_statement   %w| return expr ; |              do bt(:return); end
    var_decl           %w| var var_declaration ; |      do child_nodes[1]; end
  end
  
  for_symbol('elsif_list') do
    single_elsif       %w| elsif_clause |            do child_nodes[0]; end
    multiple_elsif     %w| elsif_list elsif_clause | do recursive_statement_add(k = [], self, /multiple_elsif elsif_list/); child_nodes.clear.concat(k); bt(:elsif_list); end
    no_elsif           %w| |
  end

  
  for_symbol('elsif_clause') do
    elsif_expr_statement     %w| elsif ( expr ) statement |   do bt(:elsif) end
  end


  for_symbol('else_clause') do
    no_else            %w| |
    else_present       %w| else statement |          do bt(:else) end
  end
  
  
  for_symbol('var_declaration') do
    simple_spec        %w| NAME_LITERAL |            do bt(:var, :simple) end
    array_spec         %w| expr @ NAME_LITERAL |     do bt(:var, :array) end
  end
  
	precedences do
#    nonassoc %w| == |
#    nonassoc %w| < > |
    left     %w| + - |
    left     %w| * / |
#    nonassoc %w| ! |
	end

	for_symbol('expr') do
#    log_not       %w| ! Expr |
		mult					%w| expr * expr |                   do bt(:expr, :mult) end
		div						%w| expr / expr |                   do bt(:expr, :div) end
		sub						%w| expr - expr |                   do bt(:expr, :sub) end
		add						%w| expr + expr |                   do bt(:expr, :add) end
#		log_and				%w| Expr && Expr |
#		log_or				%w( Expr || Expr )
#		bit_and				%w| Expr & Expr |
#		bit_or				%w( Expr | Expr )
		literal				%w| NUMBER_LITERAL |                do bt(:expr, :numeric_literal) end
		name					%w| NAME_LITERAL |                  do bt(:expr, :name) end
		array_name    %w| @ NAME_LITERAL |                do bt(:expr, :array_name) end
#		ref						%w| & WORD_LITERAL |
		paren					%w| ( expr ) |                      do bt(:expr, :paren) end
#		deref					%w| [ Expr ] |
#    negate        %w| - Expr |, :prec => '*'
	end
end
