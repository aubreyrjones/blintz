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

class BlintzGrammar < Dhaka::Grammar

  for_symbol(Dhaka::START_SYMBOL_NAME) do
    blintz_module           %w| module_statements |
  end
  
  for_symbol('module_statements') do
    no_declarations         %| |
    single_declaration      %w| global_declaration |
    multiple_declarations   %w| module_statements global_declaration |
  end

  for_symbol('global_declaration') do
#    import                %w| import string_literal ; |
    function_def          %w| def function_name statement |
  end
  
  for_symbol('statement') do
    null_statement      %w| { } |
    simple_statement    %w| primary_statement |
    compound_statement  %w| { statement_list } | do
      new_kids = []
      recursive_statement_add(new_kids, child_nodes[1], /multiple_items statement_list/)
      child_nodes.clear
      child_nodes.concat(new_kids)
      self
    end
  end
  
  for_symbol('statement_list') do
    statement_item      %w| statement | do
      child_nodes[0]
    end
    multiple_items      %w| statement_list statement|
  end
  
  for_symbol('primary_statement') do
    if_statement       %w| if ( expr ) statement elsif_list else_clause | do
      child_nodes.delete_at(1)
      child_nodes.delete_at(2)
      child_nodes.delete_at(0)
      self
    end
    assign_statement   %w| expr = expr ; |
    return_statement   %w| return expr ; |
  end
  
  for_symbol('function_name') do
    identifier_name             %w| NAME_LITERAL |
  end
  
  for_symbol('elsif_list') do
    no_elsif           %w| |
    single_elsif       %w| elsif_clause |
    multiple_elsif     %w| elsif_list elsif_list |
  end
  
  for_symbol('elsif_clause') do
    elsif_thingie       %w| elsif ( expr ) statement |
  end

  for_symbol('else_clause') do
    no_else            %w| |
    else_present       %w| else statement |
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
		mult					%w| expr * expr |
		div						%w| expr / expr |
		sub						%w| expr - expr |
		add						%w| expr + expr |
#		log_and				%w| Expr && Expr |
#		log_or				%w( Expr || Expr )
#		bit_and				%w| Expr & Expr |
#		bit_or				%w( Expr | Expr )
		literal				%w| NUMBER_LITERAL |
		name					%w| NAME_LITERAL |
#		ref						%w| & WORD_LITERAL |
		paren					%w| ( expr ) |
#		deref					%w| [ Expr ] |
#    negate        %w| - Expr |, :prec => '*'
	end
end
