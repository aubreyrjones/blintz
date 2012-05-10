require 'dhaka'

class BlintzGrammar < Dhaka::Grammar
	precedences do
		left 					%w| + - |
		left 					%w| * / |
		right 				%w| & - ! |
	end

	for_symbol('Expr') do
		mult					%w| Expr * Expr |
		div						%w| Expr / Expr |
		sub						%w| Expr - Expr |
		add						%w| Expr + Expr |
		log_and				%w| Expr && Expr |
		log_or				%w( Expr || Expr )
		bit_and				%w| Expr & Expr |
		bit_or				%w( Expr | Expr )
		int						%w| INTEGER |
		name					%w| NAME |
		ref						%w| & NAME |
		negate				%w| - Expr |
		log_not				%w| ! Expr |
		paren					%w| ( Expr ) |
		deref					%w| [ Expr ] |

	end
end
