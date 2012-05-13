class BlintzLexer < Dhaka::CompiledLexer

  self.specification = BlintzLexerSpec

  start_with 73161630

  at_state(73161630) {
    accept("\\d*(\\.\\d+)?")
    for_characters("&") { switch_to 73160830 }
    for_characters("|") { switch_to 73160340 }
    for_characters("@") { switch_to 73159830 }
    for_characters("(") { switch_to 73159570 }
    for_characters(")") { switch_to 73159330 }
    for_characters("{") { switch_to 73159090 }
    for_characters("}") { switch_to 73158850 }
    for_characters("[") { switch_to 73158610 }
    for_characters("]") { switch_to 73158370 }
    for_characters("#") { switch_to 73158130 }
    for_characters("=") { switch_to 73157890 }
    for_characters("-") { switch_to 73157650 }
    for_characters("!") { switch_to 73157410 }
    for_characters(">") { switch_to 73157170 }
    for_characters("<") { switch_to 73156950 }
    for_characters(",") { switch_to 73156690 }
    for_characters("+") { switch_to 73156450 }
    for_characters("*") { switch_to 73156210 }
    for_characters(";") { switch_to 73155970 }
    for_characters("/") { switch_to 73155720 }
    for_characters("^") { switch_to 73155430 }
    for_characters("r") { switch_to 73155190 }
    for_characters("d") { switch_to 73137750 }
    for_characters("i") { switch_to 73131190 }
    for_characters("e") { switch_to 73115850 }
    for_characters("v") { switch_to 73102710 }
    for_characters("w") { switch_to 73096100 }
    for_characters("n") { switch_to 73085210 }
    for_characters("\"") { switch_to 73076410 }
    for_characters("a", "b", "c", "f", "g", "h", "j", "k", "l", "m", "o", "p", "q", "s", "t", "u", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 73065610 }
    for_characters("0") { switch_to 73060510 }
    for_characters("1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73058330 }
    for_characters(".") { switch_to 73057790 }
    for_characters(" ", "\r", "\n", "\t") { switch_to 73056130 }
  }

  at_state(73160830) {
    accept("&")
    for_characters("&") { switch_to 73160580 }
  }

  at_state(73160580) {
    accept("&&")
  }

  at_state(73160340) {
    accept("\\|")
    for_characters("|") { switch_to 73160070 }
  }

  at_state(73160070) {
    accept("\\|\\|")
  }

  at_state(73159830) {
    accept("@")
  }

  at_state(73159570) {
    accept("\\(")
  }

  at_state(73159330) {
    accept("\\)")
  }

  at_state(73159090) {
    accept("\\{")
  }

  at_state(73158850) {
    accept("\\}")
  }

  at_state(73158610) {
    accept("\\[")
  }

  at_state(73158370) {
    accept("\\]")
  }

  at_state(73158130) {
    accept("#")
  }

  at_state(73157890) {
    accept("=")
  }

  at_state(73157650) {
    accept("-")
  }

  at_state(73157410) {
    accept("!")
  }

  at_state(73157170) {
    accept(">")
  }

  at_state(73156950) {
    accept("<")
  }

  at_state(73156690) {
    accept(",")
  }

  at_state(73156450) {
    accept("\\+")
  }

  at_state(73156210) {
    accept("\\*")
  }

  at_state(73155970) {
    accept(";")
  }

  at_state(73155720) {
    accept("\\/")
  }

  at_state(73155430) {
    accept("\\^")
  }

  at_state(73155190) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 73154930 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73154930) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 73154650 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73154650) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("u") { switch_to 73154390 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73154390) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 73154110 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73154110) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("n") { switch_to 73153850 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73153850) {
    accept("return")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73153570) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73152500) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 73152500 }
  }

  at_state(73137750) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 73137470 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73137470) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 73137210 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73137210) {
    accept("def")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73131190) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 73130860 }
    for_characters("m") { switch_to 73128680 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73130860) {
    accept("if")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73128680) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("p") { switch_to 73128400 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73128400) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("o") { switch_to 73128140 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73128140) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 73127840 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73127840) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 73127580 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73127580) {
    accept("import")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73115850) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 73115550 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73115550) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 73115280 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73115280) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 73114990 }
    for_characters("e") { switch_to 73110620 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73114990) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 73114710 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73114710) {
    accept("elsif")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73110620) {
    accept("else")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73102710) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a") { switch_to 73102450 }
    for_characters("b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73102450) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 73102170 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73102170) {
    accept("var")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73096100) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("h") { switch_to 73095840 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73095840) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 73095560 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73095560) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 73095300 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73095300) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 73095020 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73095020) {
    accept("while")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73085210) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 73084950 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73084950) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("x") { switch_to 73084670 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73084670) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 73084410 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73084410) {
    accept("next")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 73153570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 73152500 }
  }

  at_state(73076410) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 73076410 }
    for_characters("\\") { switch_to 73073180 }
    for_characters("\"") { switch_to 73069530 }
  }

  at_state(73073180) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "\"", "'", "<", ",", ">", "-", " ", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "\\", "|", "{", "}", "/", "^", "$") { switch_to 73072920 }
  }

  at_state(73072920) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 73072920 }
    for_characters("\\") { switch_to 73073180 }
    for_characters("\"") { switch_to 73069530 }
  }

  at_state(73069530) {
    accept("\"([^\"\\\\]*(\\\\.[^\"\\\\]*)*)\"")
  }

  at_state(73065610) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 73065610 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 73064580 }
  }

  at_state(73064580) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 73064580 }
  }

  at_state(73060510) {
    accept("\\d*(\\.\\d+)?")
    for_characters("x") { switch_to 73060230 }
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73058330 }
    for_characters(".") { switch_to 73057790 }
  }

  at_state(73060230) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 73059970 }
  }

  at_state(73059970) {
    accept("0x[0-9a-fA-F]+")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 73059970 }
  }

  at_state(73058330) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73058330 }
    for_characters(".") { switch_to 73057790 }
  }

  at_state(73057790) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73057540 }
  }

  at_state(73057540) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73057540 }
  }

  at_state(73056130) {
    accept("\\s+")
    for_characters(" ", "\r", "\n", "\t") { switch_to 73056130 }
  }

end