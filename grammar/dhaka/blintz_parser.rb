class BlintzParser < Dhaka::CompiledParser

  self.grammar = BlintzGrammar

  start_with 0

  at_state(0) {
    for_symbols("module_statements") { shift_to 1 }
    for_symbols(" ") { shift_to 31 }
    for_symbols("global_declaration") { shift_to 32 }
    for_symbols("def") { shift_to 3 }
  }

  at_state(1) {
    for_symbols("global_declaration") { shift_to 2 }
    for_symbols("def") { shift_to 3 }
    for_symbols("_End_") { reduce_with "blintz_module" }
  }

  at_state(2) {
    for_symbols("_End_", "def") { reduce_with "multiple_declarations" }
  }

  at_state(3) {
    for_symbols("identifier") { shift_to 4 }
  }

  at_state(4) {
    for_symbols("(") { shift_to 5 }
  }

  at_state(5) {
    for_symbols("formal_params") { shift_to 6 }
  }

  at_state(6) {
    for_symbols(")") { shift_to 7 }
  }

  at_state(7) {
    for_symbols("statement") { shift_to 8 }
    for_symbols("primary_statement") { shift_to 9 }
    for_symbols("{") { shift_to 11 }
    for_symbols("Expr") { shift_to 15 }
    for_symbols("if") { shift_to 18 }
    for_symbols("return") { shift_to 26 }
  }

  at_state(8) {
    for_symbols("_End_", "def") { reduce_with "function_def" }
  }

  at_state(9) {
    for_symbols("statement_term") { shift_to 10 }
  }

  at_state(10) {
    for_symbols("{", "Expr", "if", "return", "eslif", "single_elsif", "statement_term", "}", "_End_", "def") { reduce_with "simple_statement" }
  }

  at_state(11) {
    for_symbols("statement") { shift_to 12 }
    for_symbols("primary_statement") { shift_to 9 }
    for_symbols("{") { shift_to 11 }
    for_symbols("Expr") { shift_to 15 }
    for_symbols("if") { shift_to 18 }
    for_symbols("return") { shift_to 26 }
  }

  at_state(12) {
    for_symbols("primary_statement") { shift_to 13 }
    for_symbols("Expr") { shift_to 15 }
    for_symbols("if") { shift_to 18 }
    for_symbols("return") { shift_to 26 }
  }

  at_state(13) {
    for_symbols("}") { shift_to 14 }
  }

  at_state(14) {
    for_symbols("{", "Expr", "if", "return", "eslif", "single_elsif", "statement_term", "}", "_End_", "def") { reduce_with "compound_statement" }
  }

  at_state(15) {
    for_symbols("=") { shift_to 16 }
  }

  at_state(16) {
    for_symbols("Expr") { shift_to 17 }
  }

  at_state(17) {
    for_symbols("}", "statement_term") { reduce_with "assign_statement" }
  }

  at_state(18) {
    for_symbols("(") { shift_to 19 }
  }

  at_state(19) {
    for_symbols("Expr") { shift_to 20 }
  }

  at_state(20) {
    for_symbols(")") { shift_to 21 }
  }

  at_state(21) {
    for_symbols("statement") { shift_to 22 }
    for_symbols("primary_statement") { shift_to 9 }
    for_symbols("{") { shift_to 11 }
    for_symbols("Expr") { shift_to 15 }
    for_symbols("if") { shift_to 18 }
    for_symbols("return") { shift_to 26 }
  }

  at_state(22) {
    for_symbols("elsif_list") { shift_to 23 }
    for_symbols("eslif") { shift_to 29 }
    for_symbols("{", "Expr", "if", "return", "single_elsif", "statement_term", "}") { reduce_with "no_elsif" }
  }

  at_state(23) {
    for_symbols("else") { shift_to 24 }
    for_symbols("single_elsif") { shift_to 28 }
    for_symbols("{", "Expr", "if", "return", "statement_term", "}") { reduce_with "no_else" }
  }

  at_state(24) {
    for_symbols("statement") { shift_to 25 }
    for_symbols("primary_statement") { shift_to 9 }
    for_symbols("{") { shift_to 11 }
    for_symbols("Expr") { shift_to 15 }
    for_symbols("if") { shift_to 18 }
    for_symbols("return") { shift_to 26 }
    for_symbols("statement_term", "}") { reduce_with "if_statement" }
  }

  at_state(25) {
    for_symbols("{", "Expr", "if", "return", "statement_term", "}") { reduce_with "single_else" }
  }

  at_state(26) {
    for_symbols("Expr") { shift_to 27 }
  }

  at_state(27) {
    for_symbols("statement_term", "}") { reduce_with "return_statement" }
  }

  at_state(28) {
    for_symbols("{", "Expr", "if", "return", "single_elsif", "statement_term", "}") { reduce_with "multiple_elsif" }
  }

  at_state(29) {
    for_symbols("statement") { shift_to 30 }
    for_symbols("primary_statement") { shift_to 9 }
    for_symbols("{") { shift_to 11 }
    for_symbols("Expr") { shift_to 15 }
    for_symbols("if") { shift_to 18 }
    for_symbols("return") { shift_to 26 }
  }

  at_state(30) {
    for_symbols("{", "Expr", "if", "return", "single_elsif", "statement_term", "}") { reduce_with "single_elsif" }
  }

  at_state(31) {
    for_symbols("_End_", "def") { reduce_with "no_declarations" }
  }

  at_state(32) {
    for_symbols("_End_", "def") { reduce_with "single_declaration" }
  }

end