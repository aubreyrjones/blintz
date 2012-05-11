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
#    import                %w| import string_literal statement_term |
    function_def          %w| def identifier statement |
    
  end
  
  for_symbol('statement') do
    simple_statement    %w| primary_statement statement_term |
    compound_statement  %w| { statement primary_statement } |
  end
  
  for_symbol('primary_statement') do
    assign_statement   %w| Expr = Expr |
    if_statement       %w| if ( Expr ) statement elsif_list else |
    return_statement   %w| return Expr |
  end
  
  for_symbol('elsif_list') do
    no_elsif           %w| |
    single_elsif       %w| eslif statement |
    multiple_elsif     %w| elsif_list single_elsif |
  end
  
  for_symbol('else') do
    no_else            %w| |
    single_else        %w| else statement |
  end
  
	precedences do
    nonassoc %w| == |
    nonassoc %w| < > |
    left     %w| + - |
    left     %w| * / |
    nonassoc %w|  |
    nonassoc %w| ! |
	end

	for_symbol('Expr') do
    log_not       %w| ! Expr |
		mult					%w| Expr * Expr |
		div						%w| Expr / Expr |
		sub						%w| Expr - Expr |
		add						%w| Expr + Expr |
#		log_and				%w| Expr && Expr |
#		log_or				%w( Expr || Expr )
#		bit_and				%w| Expr & Expr |
#		bit_or				%w( Expr | Expr )
		literal				%w| NUMBER_LITERAL |
		name					%w| WORD_LITERAL |
		ref						%w| & WORD_LITERAL |
		paren					%w| ( Expr ) |
		deref					%w| [ Expr ] |
    negate        %w| - Expr |, :prec => '*'
	end
end
