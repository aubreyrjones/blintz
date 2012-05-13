class BlintzLexer < Dhaka::CompiledLexer

  self.specification = BlintzLexerSpec

  start_with 80673590

  at_state(80673590) {
    accept("\\d*(\\.\\d+)?")
    for_characters("&") { switch_to 80672740 }
    for_characters("|") { switch_to 80672250 }
    for_characters("@") { switch_to 80671740 }
    for_characters("(") { switch_to 80671500 }
    for_characters(")") { switch_to 80671260 }
    for_characters("{") { switch_to 80671020 }
    for_characters("}") { switch_to 80670780 }
    for_characters("[") { switch_to 80670540 }
    for_characters("]") { switch_to 80670300 }
    for_characters("#") { switch_to 80670050 }
    for_characters("=") { switch_to 80669810 }
    for_characters("-") { switch_to 80669570 }
    for_characters("!") { switch_to 80669330 }
    for_characters(">") { switch_to 80669090 }
    for_characters("<") { switch_to 80668850 }
    for_characters(",") { switch_to 80668610 }
    for_characters("+") { switch_to 80668370 }
    for_characters("*") { switch_to 80668150 }
    for_characters(";") { switch_to 80667910 }
    for_characters("/") { switch_to 80667670 }
    for_characters("^") { switch_to 80667430 }
    for_characters("r") { switch_to 80667190 }
    for_characters("d") { switch_to 80600030 }
    for_characters("i") { switch_to 80573230 }
    for_characters("e") { switch_to 80460390 }
    for_characters("v") { switch_to 80447370 }
    for_characters("a") { switch_to 80398820 }
    for_characters("w") { switch_to 80378600 }
    for_characters("n") { switch_to 80333910 }
    for_characters("\"") { switch_to 80325250 }
    for_characters("b", "c", "f", "g", "h", "j", "k", "l", "m", "o", "p", "q", "s", "t", "u", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 80293650 }
    for_characters("0") { switch_to 80288580 }
    for_characters("1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 80286530 }
    for_characters(".") { switch_to 80285990 }
    for_characters(" ", "\r", "\n", "\t") { switch_to 79818280 }
  }

  at_state(80672740) {
    accept("&")
    for_characters("&") { switch_to 80672490 }
  }

  at_state(80672490) {
    accept("&&")
  }

  at_state(80672250) {
    accept("\\|")
    for_characters("|") { switch_to 80671980 }
  }

  at_state(80671980) {
    accept("\\|\\|")
  }

  at_state(80671740) {
    accept("@")
  }

  at_state(80671500) {
    accept("\\(")
  }

  at_state(80671260) {
    accept("\\)")
  }

  at_state(80671020) {
    accept("\\{")
  }

  at_state(80670780) {
    accept("\\}")
  }

  at_state(80670540) {
    accept("\\[")
  }

  at_state(80670300) {
    accept("\\]")
  }

  at_state(80670050) {
    accept("#")
  }

  at_state(80669810) {
    accept("=")
  }

  at_state(80669570) {
    accept("-")
  }

  at_state(80669330) {
    accept("!")
  }

  at_state(80669090) {
    accept(">")
  }

  at_state(80668850) {
    accept("<")
  }

  at_state(80668610) {
    accept(",")
  }

  at_state(80668370) {
    accept("\\+")
  }

  at_state(80668150) {
    accept("\\*")
  }

  at_state(80667910) {
    accept(";")
  }

  at_state(80667670) {
    accept("\\/")
  }

  at_state(80667430) {
    accept("\\^")
  }

  at_state(80667190) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 80666910 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80666910) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 80666650 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80666650) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("u") { switch_to 80666370 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80666370) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 80666110 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80666110) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("n") { switch_to 80665830 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80665830) {
    accept("return")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80665570) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80664500) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 80664500 }
  }

  at_state(80600030) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 80599770 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80599770) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 80599490 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80599490) {
    accept("def")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80573230) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 80572960 }
    for_characters("m") { switch_to 80570760 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80572960) {
    accept("if")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80570760) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("p") { switch_to 80570500 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80570500) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("o") { switch_to 80570220 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80570220) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 80569950 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80569950) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 80569670 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80569670) {
    accept("import")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80460390) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 80460100 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80460100) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 80459830 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80459830) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 80459540 }
    for_characters("e") { switch_to 80455180 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80459540) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 80459260 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80459260) {
    accept("elsif")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80455180) {
    accept("else")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80447370) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a") { switch_to 80447090 }
    for_characters("b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80447090) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 80446830 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80446830) {
    accept("var")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80398820) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 80398530 }
    for_characters("t") { switch_to 80396350 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80398530) {
    accept("as")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80396350) {
    accept("at")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80378600) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("h") { switch_to 80378320 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80378320) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 80378060 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80378060) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 80377780 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80377780) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 80377520 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80377520) {
    accept("while")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80333910) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 80333650 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80333650) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("x") { switch_to 80333370 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80333370) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 80333110 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80333110) {
    accept("next")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80665570 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 80664500 }
  }

  at_state(80325250) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 80325250 }
    for_characters("\\") { switch_to 80300740 }
    for_characters("\"") { switch_to 80297330 }
  }

  at_state(80300740) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "\"", "'", "<", ",", ">", "-", " ", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "\\", "|", "{", "}", "/", "^", "$") { switch_to 80300500 }
  }

  at_state(80300500) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 80300500 }
    for_characters("\\") { switch_to 80300740 }
    for_characters("\"") { switch_to 80297330 }
  }

  at_state(80297330) {
    accept("\"([^\"\\\\]*(\\\\.[^\"\\\\]*)*)\"")
  }

  at_state(80293650) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 80293650 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 80292610 }
  }

  at_state(80292610) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 80292610 }
  }

  at_state(80288580) {
    accept("\\d*(\\.\\d+)?")
    for_characters("x") { switch_to 80288330 }
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 80286530 }
    for_characters(".") { switch_to 80285990 }
  }

  at_state(80288330) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 80288080 }
  }

  at_state(80288080) {
    accept("0x[0-9a-fA-F]+")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 80288080 }
  }

  at_state(80286530) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 80286530 }
    for_characters(".") { switch_to 80285990 }
  }

  at_state(80285990) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 80285740 }
  }

  at_state(80285740) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 80285740 }
  }

  at_state(79818280) {
    accept("\\s+")
    for_characters(" ", "\r", "\n", "\t") { switch_to 79818280 }
  }

end