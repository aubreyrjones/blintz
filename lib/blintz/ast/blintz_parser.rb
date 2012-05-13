class BlintzParser < Dhaka::CompiledParser

  self.grammar = BlintzGrammar

  start_with 0

  at_state(0) {
    for_symbols("module_statements") { shift_to 1 }
    for_symbols("globals_list") { shift_to 2 }
    for_symbols("global_declaration") { shift_to 93 }
    for_symbols("import") { shift_to 4 }
    for_symbols("function_def") { shift_to 7 }
    for_symbols("def") { shift_to 8 }
    for_symbols("_End_") { reduce_with "no_declarations" }
  }

  at_state(1) {
    for_symbols("_End_") { reduce_with "blintz_module" }
  }

  at_state(2) {
    for_symbols("global_declaration") { shift_to 3 }
    for_symbols("import") { shift_to 4 }
    for_symbols("function_def") { shift_to 7 }
    for_symbols("def") { shift_to 8 }
    for_symbols("_End_") { reduce_with "declaration_list" }
  }

  at_state(3) {
    for_symbols("_End_", "import", "def") { reduce_with "multiple_declaration" }
  }

  at_state(4) {
    for_symbols("STRING_LITERAL") { shift_to 5 }
  }

  at_state(5) {
    for_symbols(";") { shift_to 6 }
  }

  at_state(6) {
    for_symbols("_End_", "import", "def") { reduce_with "import" }
  }

  at_state(7) {
    for_symbols("_End_", "import", "def") { reduce_with "global_function_def" }
  }

  at_state(8) {
    for_symbols("NAME_LITERAL") { shift_to 9 }
  }

  at_state(9) {
    for_symbols("statement") { shift_to 10 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(10) {
    for_symbols("_End_", "import", "def") { reduce_with "f_def" }
  }

  at_state(11) {
    for_symbols("}") { shift_to 12 }
    for_symbols("statement_list") { shift_to 13 }
    for_symbols("statement") { shift_to 92 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(12) {
    for_symbols("}", "{", "if", "while", "next", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "elsif", "else", "_End_", "import", "def") { reduce_with "null_statement" }
  }

  at_state(13) {
    for_symbols("}") { shift_to 14 }
    for_symbols("statement") { shift_to 15 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(14) {
    for_symbols("}", "{", "if", "while", "next", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "elsif", "else", "_End_", "import", "def") { reduce_with "compound_statement" }
  }

  at_state(15) {
    for_symbols("}", "{", "if", "while", "next", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-") { reduce_with "multiple_items" }
  }

  at_state(16) {
    for_symbols("}", "{", "if", "while", "next", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "elsif", "else", "_End_", "import", "def") { reduce_with "simple_statement" }
  }

  at_state(17) {
    for_symbols("(") { shift_to 18 }
  }

  at_state(18) {
    for_symbols("expr") { shift_to 19 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(19) {
    for_symbols(")") { shift_to 20 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(20) {
    for_symbols("statement") { shift_to 21 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(21) {
    for_symbols("elsif_list") { shift_to 22 }
    for_symbols("elsif_clause") { shift_to 91 }
    for_symbols("elsif") { shift_to 86 }
    for_symbols("else", "next", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "no_elsif" }
  }

  at_state(22) {
    for_symbols("else_clause") { shift_to 23 }
    for_symbols("elsif_clause") { shift_to 24 }
    for_symbols("else") { shift_to 25 }
    for_symbols("elsif") { shift_to 86 }
    for_symbols("next", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "no_else" }
  }

  at_state(23) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "if_statement" }
  }

  at_state(24) {
    for_symbols("else", "elsif", "next", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "multiple_elsif" }
  }

  at_state(25) {
    for_symbols("statement") { shift_to 26 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(26) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "else_present" }
  }

  at_state(27) {
    for_symbols("(") { shift_to 28 }
  }

  at_state(28) {
    for_symbols("expr") { shift_to 29 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(29) {
    for_symbols(")") { shift_to 30 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(30) {
    for_symbols("statement") { shift_to 31 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(31) {
    for_symbols("next_clause") { shift_to 32 }
    for_symbols("next") { shift_to 33 }
    for_symbols("elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "absent" }
  }

  at_state(32) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "while_statement" }
  }

  at_state(33) {
    for_symbols("statement") { shift_to 34 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(34) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "next_present" }
  }

  at_state(35) {
    for_symbols(";") { shift_to 36 }
  }

  at_state(36) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "next_statement" }
  }

  at_state(37) {
    for_symbols("=") { shift_to 38 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(38) {
    for_symbols("expr") { shift_to 39 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(39) {
    for_symbols(";") { shift_to 40 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(40) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "assign_statement" }
  }

  at_state(41) {
    for_symbols("expr") { shift_to 42 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(42) {
    for_symbols("*", "/", "-", "+", "=", "]", ")", ";", "@") { reduce_with "mult" }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(43) {
    for_symbols("expr") { shift_to 44 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(44) {
    for_symbols("*", "/", "-", "+", "=", "]", ")", ";", "@") { reduce_with "div" }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(45) {
    for_symbols("expr") { shift_to 46 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(46) {
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-", "+", "=", "]", ")", ";", "@") { reduce_with "sub" }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(47) {
    for_symbols("expr") { shift_to 48 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(48) {
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-", "+", "=", "]", ")", ";", "@") { reduce_with "add" }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(49) {
    for_symbols("expr") { shift_to 50 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(50) {
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
    for_symbols("=", "]", ")", ";", "@") { reduce_with "log_and" }
  }

  at_state(51) {
    for_symbols("expr") { shift_to 52 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(52) {
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
    for_symbols("=", "]", ")", ";", "@") { reduce_with "log_or" }
  }

  at_state(53) {
    for_symbols("expr") { shift_to 54 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(54) {
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
    for_symbols("=", "]", ")", ";", "@") { reduce_with "bit_and" }
  }

  at_state(55) {
    for_symbols("expr") { shift_to 56 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(56) {
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
    for_symbols("=", "]", ")", ";", "@") { reduce_with "bit_or" }
  }

  at_state(57) {
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", ";", "=", ")", "]", "@") { reduce_with "literal" }
  }

  at_state(58) {
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", ";", "=", ")", "]", "@") { reduce_with "hex_literal" }
  }

  at_state(59) {
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", ";", "=", ")", "]", "@") { reduce_with "name" }
  }

  at_state(60) {
    for_symbols("NAME_LITERAL") { shift_to 61 }
  }

  at_state(61) {
    for_symbols("[") { shift_to 62 }
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", "]", ";", "=", ")", "@") { reduce_with "array_name" }
  }

  at_state(62) {
    for_symbols("expr") { shift_to 63 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(63) {
    for_symbols("]") { shift_to 64 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(64) {
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", "]", ";", "=", ")", "@") { reduce_with "array_index" }
  }

  at_state(65) {
    for_symbols("NAME_LITERAL") { shift_to 66 }
  }

  at_state(66) {
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", "]", ";", "=", ")", "@") { reduce_with "ref" }
  }

  at_state(67) {
    for_symbols("expr") { shift_to 68 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(68) {
    for_symbols(")") { shift_to 69 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(69) {
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", ")", "]", ";", "=", "@") { reduce_with "paren" }
  }

  at_state(70) {
    for_symbols("expr") { shift_to 71 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(71) {
    for_symbols("]") { shift_to 72 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(72) {
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", "]", ")", ";", "=", "@") { reduce_with "deref" }
  }

  at_state(73) {
    for_symbols("expr") { shift_to 74 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(74) {
    for_symbols("*", "/", "-", "+", "]", ")", ";", "=", "@") { reduce_with "negate" }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(75) {
    for_symbols(";") { shift_to 76 }
    for_symbols("expr") { shift_to 77 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(76) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "simple_return_statement" }
  }

  at_state(77) {
    for_symbols(";") { shift_to 78 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(78) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "return_statement" }
  }

  at_state(79) {
    for_symbols("var_declaration") { shift_to 80 }
    for_symbols("NAME_LITERAL") { shift_to 82 }
    for_symbols("expr") { shift_to 83 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(80) {
    for_symbols(";") { shift_to 81 }
  }

  at_state(81) {
    for_symbols("next", "elsif", "else", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "var_decl" }
  }

  at_state(82) {
    for_symbols(";") { reduce_with "simple_spec" }
    for_symbols("*", "/", "-", "+", "LOG_AND", "LOG_OR", "BIT_AND", "BIT_OR", "@") { reduce_with "name" }
  }

  at_state(83) {
    for_symbols("@") { shift_to 84 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(84) {
    for_symbols("NAME_LITERAL") { shift_to 85 }
  }

  at_state(85) {
    for_symbols(";") { reduce_with "array_spec" }
  }

  at_state(86) {
    for_symbols("(") { shift_to 87 }
  }

  at_state(87) {
    for_symbols("expr") { shift_to 88 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(88) {
    for_symbols(")") { shift_to 89 }
    for_symbols("*") { shift_to 41 }
    for_symbols("/") { shift_to 43 }
    for_symbols("-") { shift_to 45 }
    for_symbols("+") { shift_to 47 }
    for_symbols("LOG_AND") { shift_to 49 }
    for_symbols("LOG_OR") { shift_to 51 }
    for_symbols("BIT_AND") { shift_to 53 }
    for_symbols("BIT_OR") { shift_to 55 }
  }

  at_state(89) {
    for_symbols("statement") { shift_to 90 }
    for_symbols("{") { shift_to 11 }
    for_symbols("primary_statement") { shift_to 16 }
    for_symbols("if") { shift_to 17 }
    for_symbols("while") { shift_to 27 }
    for_symbols("next") { shift_to 35 }
    for_symbols("expr") { shift_to 37 }
    for_symbols("return") { shift_to 75 }
    for_symbols("var") { shift_to 79 }
    for_symbols("DECIMAL_LITERAL") { shift_to 57 }
    for_symbols("HEX_LITERAL") { shift_to 58 }
    for_symbols("NAME_LITERAL") { shift_to 59 }
    for_symbols("@") { shift_to 60 }
    for_symbols("#") { shift_to 65 }
    for_symbols("(") { shift_to 67 }
    for_symbols("[") { shift_to 70 }
    for_symbols("-") { shift_to 73 }
  }

  at_state(90) {
    for_symbols("else", "elsif", "next", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "elsif_expr_statement" }
  }

  at_state(91) {
    for_symbols("else", "elsif", "next", "}", "{", "if", "while", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-", "_End_", "import", "def") { reduce_with "single_elsif" }
  }

  at_state(92) {
    for_symbols("}", "{", "if", "while", "next", "return", "var", "DECIMAL_LITERAL", "HEX_LITERAL", "NAME_LITERAL", "@", "#", "(", "[", "-") { reduce_with "statement_item" }
  }

  at_state(93) {
    for_symbols("_End_", "import", "def") { reduce_with "single_declaration" }
  }

end