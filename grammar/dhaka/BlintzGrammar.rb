require 'dhaka'

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
    compound_statement  %w| { statement_list } |
    simple_statement    %w| primary_statement ; |
  end
  
  for_symbol('statement_list') do
    statement_item      %w| statement |
    multiple_items      %w| statement_list statement|
  end
  
  for_symbol('primary_statement') do
    if_statement       %w| if ( expr ) statement |
    assign_statement   %w| expr = expr |
    return_statement   %w| return expr |
  end
  
  for_symbol('function_name') do
    identifier_name             %w| NAME_LITERAL |
  end
  
#  for_symbol('elsif_list') do
#    no_elsif           %w| |
#    single_elsif       %w| eslif statement |
#    multiple_elsif     %w| elsif_list single_elsif |
#  end
  
#  for_symbol('else_clause') do
#    no_else            %w| |
#    single_else        %w| else statement |
#  end
  
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
