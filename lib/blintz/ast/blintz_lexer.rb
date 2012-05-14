class BlintzLexer < Dhaka::CompiledLexer

  self.specification = BlintzLexerSpec

  start_with 75062240

  at_state(75062240) {
    accept("\\d*(\\.\\d+)?")
    for_characters("&") { switch_to 75059500 }
    for_characters("|") { switch_to 75057450 }
    for_characters("=") { switch_to 75030660 }
    for_characters("@") { switch_to 75029160 }
    for_characters("(") { switch_to 75028500 }
    for_characters(")") { switch_to 75027510 }
    for_characters("{") { switch_to 75026520 }
    for_characters("}") { switch_to 75025530 }
    for_characters("[") { switch_to 75024560 }
    for_characters("]") { switch_to 75023550 }
    for_characters("#") { switch_to 74989710 }
    for_characters("-") { switch_to 74988830 }
    for_characters("!") { switch_to 74988580 }
    for_characters(">") { switch_to 74988340 }
    for_characters("<") { switch_to 74988090 }
    for_characters(",") { switch_to 74987760 }
    for_characters("+") { switch_to 74987160 }
    for_characters("*") { switch_to 74986420 }
    for_characters(":") { switch_to 74985440 }
    for_characters(";") { switch_to 74984440 }
    for_characters("/") { switch_to 74983510 }
    for_characters("^") { switch_to 74982520 }
    for_characters("r") { switch_to 74952840 }
    for_characters("d") { switch_to 74636680 }
    for_characters("i") { switch_to 74560140 }
    for_characters("e") { switch_to 74361240 }
    for_characters("v") { switch_to 74248880 }
    for_characters("a") { switch_to 74152500 }
    for_characters("w") { switch_to 74105750 }
    for_characters("n") { switch_to 73927540 }
    for_characters("\"") { switch_to 73878610 }
    for_characters("b", "c", "f", "g", "h", "j", "k", "l", "m", "o", "p", "q", "s", "t", "u", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 73846140 }
    for_characters("0") { switch_to 73833580 }
    for_characters("1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73827210 }
    for_characters(".") { switch_to 73826060 }
    for_characters(" ", "\r", "\n", "\t") { switch_to 73822740 }
  }

  at_state(75059500) {
    accept("&")
    for_characters("&") { switch_to 75058450 }
  }

  at_state(75058450) {
    accept("&&")
  }

  at_state(75057450) {
    accept("\\|")
    for_characters("|") { switch_to 75056400 }
  }

  at_state(75056400) {
    accept("\\|\\|")
  }

  at_state(75030660) {
    accept("=")
    for_characters("=") { switch_to 75029750 }
  }

  at_state(75029750) {
    accept("==")
  }

  at_state(75029160) {
    accept("@")
  }

  at_state(75028500) {
    accept("\\(")
  }

  at_state(75027510) {
    accept("\\)")
  }

  at_state(75026520) {
    accept("\\{")
  }

  at_state(75025530) {
    accept("\\}")
  }

  at_state(75024560) {
    accept("\\[")
  }

  at_state(75023550) {
    accept("\\]")
  }

  at_state(74989710) {
    accept("#")
  }

  at_state(74988830) {
    accept("-")
  }

  at_state(74988580) {
    accept("!")
  }

  at_state(74988340) {
    accept(">")
  }

  at_state(74988090) {
    accept("<")
  }

  at_state(74987760) {
    accept(",")
  }

  at_state(74987160) {
    accept("\\+")
  }

  at_state(74986420) {
    accept("\\*")
  }

  at_state(74985440) {
    accept(":")
  }

  at_state(74984440) {
    accept(";")
  }

  at_state(74983510) {
    accept("\\/")
  }

  at_state(74982520) {
    accept("\\^")
  }

  at_state(74952840) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 74951940 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74951940) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 74951280 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74951280) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("u") { switch_to 74950450 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74950450) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 74949290 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74949290) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("n") { switch_to 74948290 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74948290) {
    accept("return")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74946990) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74913350) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 74913350 }
  }

  at_state(74636680) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 74636160 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74636160) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 74635700 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74635700) {
    accept("def")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74560140) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 74559120 }
    for_characters("m") { switch_to 74555390 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74559120) {
    accept("if")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74555390) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("p") { switch_to 74554860 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74554860) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("o") { switch_to 74529430 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74529430) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 74528400 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74528400) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 74527510 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74527510) {
    accept("import")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74361240) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 74339790 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74339790) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 74339160 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74339160) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 74338660 }
    for_characters("i") { switch_to 74332650 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74338660) {
    accept("else")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74332650) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 74328300 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74328300) {
    accept("elsif")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74248880) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a") { switch_to 74225540 }
    for_characters("b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74225540) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 74224620 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74224620) {
    accept("var")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74152500) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 74151570 }
    for_characters("t") { switch_to 74145230 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74151570) {
    accept("as")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74145230) {
    accept("at")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74105750) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("h") { switch_to 74073610 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74073610) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 74072880 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74072880) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 74072040 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74072040) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 74071370 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(74071370) {
    accept("while")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(73927540) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 73926820 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(73926820) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("x") { switch_to 73925840 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(73925840) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 73925010 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(73925010) {
    accept("next")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 74946990 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 74913350 }
  }

  at_state(73878610) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 73878610 }
    for_characters("\\") { switch_to 73870330 }
    for_characters("\"") { switch_to 73863580 }
  }

  at_state(73870330) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "\"", "'", "<", ",", ">", "-", " ", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "\\", "|", "{", "}", "/", "^", "$") { switch_to 73869700 }
  }

  at_state(73869700) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 73869700 }
    for_characters("\\") { switch_to 73870330 }
    for_characters("\"") { switch_to 73863580 }
  }

  at_state(73863580) {
    accept("\"([^\"\\\\]*(\\\\.[^\"\\\\]*)*)\"")
  }

  at_state(73846140) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 73846140 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 73843760 }
  }

  at_state(73843760) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 73843760 }
  }

  at_state(73833580) {
    accept("\\d*(\\.\\d+)?")
    for_characters("x") { switch_to 73832590 }
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73827210 }
    for_characters(".") { switch_to 73826060 }
  }

  at_state(73832590) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 73831850 }
  }

  at_state(73831850) {
    accept("0x[0-9a-fA-F]+")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 73831850 }
  }

  at_state(73827210) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73827210 }
    for_characters(".") { switch_to 73826060 }
  }

  at_state(73826060) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73825580 }
  }

  at_state(73825580) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 73825580 }
  }

  at_state(73822740) {
    accept("\\s+")
    for_characters(" ", "\r", "\n", "\t") { switch_to 73822740 }
  }

end