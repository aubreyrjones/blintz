class BlintzGrammar < Dhaka::Grammar

  for_symbol(Dhaka::START_SYMBOL_NAME) do
    blintz_module          %w| module_statements |               do tag!(:module); end
  end
  
  for_symbol('module_statements') do
    no_declarations        %w| |
    
    declaration_list       %w| globals_list |                    do rec_list_compact(child_nodes[0], /^multiple_declaration/).
                                                                    tag!(:declarations); end
  end

  
  for_symbol('globals_list') do
    single_declaration      %w| global_declaration |
    multiple_declaration    %w| globals_list global_declaration | do tag!(:declaration_list); end
  end

  for_symbol('global_declaration') do
    import                  %w| import STRING_LITERAL ; |        do tag!(:import); end
    global_function_def     %w| function_def |                   do ellide; end
  end
  
  for_symbol('function_def') do
    f_def                   %w| def NAME_LITERAL ( formal_params ) statement |     do tag!(:def); end
  end
  
  for_symbol('formal_params') do
    no_formals              %w| |
    formals_declared        %w| formals_list |                   do rec_list_compact(child_nodes[0], /formals_list/).
                                                                    tag!(:formal_params) end
  end
  
  for_symbol('formals_list') do
    formal_item             %w| formal_param |                   do ellide; end
    formals_list_cont       %w| formals_list , formal_param |    do child_nodes.delete_at 1; self; end
  end
  
  for_symbol('formal_param') do
    simple_param            %w| NAME_LITERAL |                   do tag!(:param, :simple) end
    array_param             %w| @ NAME_LITERAL |                 do tag!(:param, :array) end
    struct_param            %w| @ NAME_LITERAL as TYPE_LITERAL | do tag!(:param, :struct) end
  end
  
  for_symbol('statement') do
    null_statement          %w| { } |                            do tag!(:null_statement); end
    
    
    simple_statement        %w| primary_statement |              do tag!(:skip) end
    
    compound_statement      %w| { statement_list } |             do rec_list_compact(child_nodes[1], /multiple_items statement_list/).
                                                                    tag!(:compound_statement); end
  end

  
  for_symbol('statement_list') do
    statement_item          %w| statement |                      do ellide; end
    multiple_items          %w| statement_list statement|
  end

  
  for_symbol('primary_statement') do
    if_statement            %w| if ( expr ) statement elsif_list else_clause |   do tag!(:if); end
    while_statement         %w| while ( expr ) statement next_clause |   do tag!(:while); end
    next_statement          %w| next ; |                         do tag!(:next); end
    assign_statement        %w| expr = expr ; |                  do tag!(:assign); end
    simple_return_statement %w| return ; |                       do tag!(:return, :simple); end
    return_statement        %w| return expr ; |                  do tag!(:return, :valued); end
    var_decl                %w| var var_declaration ; |          do child_nodes[1]; end
  end
  
  for_symbol('elsif_list') do
    single_elsif            %w| elsif_clause |                   do ellide; end
    multiple_elsif          %w| elsif_list elsif_clause |        do rec_list_compact(child_nodes[0], /multiple_elsif elsif_list/).
                                                                    tag!(:elsif_list); end
    no_elsif                %w| |
  end
  
  for_symbol('elsif_clause') do
    elsif_expr_statement    %w| elsif ( expr ) statement |       do tag!(:elsif) end
  end

  for_symbol('else_clause') do
    no_else                 %w| |
    else_present            %w| else statement |                 do tag!(:else) end
  end


  for_symbol('next_clause') do
    absent                  %w| |
    next_present            %w| next statement |                 do skip_get(1); end
  end  
    
  
  for_symbol('var_declaration') do
    simple_spec             %w| NAME_LITERAL |                   do tag!(:var, :simple) end
    array_spec              %w| expr @ NAME_LITERAL |            do tag!(:var, :array) end
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
    mult                    %w| expr * expr |                    do tag!(:expr, :mult) end
    div                     %w| expr / expr |                    do tag!(:expr, :div) end
    sub                     %w| expr - expr |                    do tag!(:expr, :sub) end
    add                     %w| expr + expr |                    do tag!(:expr, :add) end
    log_and                 %w| expr LOG_AND expr |              do tag!(:expr, :log_and) end
    log_or                  %w| expr LOG_OR expr |               do tag!(:expr, :log_or) end
    bit_and                 %w| expr BIT_AND expr |              do tag!(:expr, :bit_and) end
    bit_or                  %w| expr BIT_OR expr |               do tag!(:expr, :bit_or) end
    literal                 %w| DECIMAL_LITERAL |                do tag!(:expr, :decimal_literal) end
    hex_literal             %w| HEX_LITERAL |                    do tag!(:expr, :hex_literal) end
    name                    %w| NAME_LITERAL |                   do tag!(:expr, :name) end
    array_name              %w| @ NAME_LITERAL |                 do tag!(:expr, :array_name) end
    ref                     %w| # NAME_LITERAL |                 do tag!(:expr, :ref) end
    paren                   %w| ( expr ) |                       do tag!(:expr, :paren) end
    deref                   %w| [ expr ] |                       do tag!(:expr, :deref) end
    array_index             %w| @ NAME_LITERAL [ expr ] |        do tag!(:expr, :array_index) end
    function_call           %w| NAME_LITERAL ( ) |               do tag!(:expr, :func_call) end
    negate                  %w| - expr |, :prec => '*'           do tag!(:expr, :negate) end
  end
end
