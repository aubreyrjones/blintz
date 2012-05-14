class BlintzLexer < Dhaka::CompiledLexer

  self.specification = BlintzLexerSpec

  start_with 78373870

  at_state(78373870) {
    accept("\\d*(\\.\\d+)?")
    for_characters("&") { switch_to 78331730 }
    for_characters("|") { switch_to 78330240 }
    for_characters("=") { switch_to 78328210 }
    for_characters("@") { switch_to 78326030 }
    for_characters("(") { switch_to 78288730 }
    for_characters(")") { switch_to 78287730 }
    for_characters("{") { switch_to 78287060 }
    for_characters("}") { switch_to 78286540 }
    for_characters("[") { switch_to 78285730 }
    for_characters("]") { switch_to 78285010 }
    for_characters("#") { switch_to 78284410 }
    for_characters("-") { switch_to 78283890 }
    for_characters("!") { switch_to 78283320 }
    for_characters(">") { switch_to 78282750 }
    for_characters("<") { switch_to 78282200 }
    for_characters(",") { switch_to 78281440 }
    for_characters("+") { switch_to 78248310 }
    for_characters("*") { switch_to 78247330 }
    for_characters(":") { switch_to 78246780 }
    for_characters(";") { switch_to 78246260 }
    for_characters("/") { switch_to 78245330 }
    for_characters("^") { switch_to 78244350 }
    for_characters("r") { switch_to 78243360 }
    for_characters("d") { switch_to 77987290 }
    for_characters("i") { switch_to 77832460 }
    for_characters("e") { switch_to 77646610 }
    for_characters("v") { switch_to 77456400 }
    for_characters("a") { switch_to 77411250 }
    for_characters("w") { switch_to 77340600 }
    for_characters("n") { switch_to 77228660 }
    for_characters("\"") { switch_to 77097370 }
    for_characters("b", "c", "f", "g", "h", "j", "k", "l", "m", "o", "p", "q", "s", "t", "u", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 77027640 }
    for_characters("0") { switch_to 77005770 }
    for_characters("1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 77001410 }
    for_characters(".") { switch_to 77000900 }
    for_characters(" ", "\r", "\n", "\t") { switch_to 76996020 }
  }

  at_state(78331730) {
    accept("&")
    for_characters("&") { switch_to 78331150 }
  }

  at_state(78331150) {
    accept("&&")
  }

  at_state(78330240) {
    accept("\\|")
    for_characters("|") { switch_to 78329180 }
  }

  at_state(78329180) {
    accept("\\|\\|")
  }

  at_state(78328210) {
    accept("=")
    for_characters("=") { switch_to 78327070 }
  }

  at_state(78327070) {
    accept("==")
  }

  at_state(78326030) {
    accept("@")
  }

  at_state(78288730) {
    accept("\\(")
  }

  at_state(78287730) {
    accept("\\)")
  }

  at_state(78287060) {
    accept("\\{")
  }

  at_state(78286540) {
    accept("\\}")
  }

  at_state(78285730) {
    accept("\\[")
  }

  at_state(78285010) {
    accept("\\]")
  }

  at_state(78284410) {
    accept("#")
  }

  at_state(78283890) {
    accept("-")
  }

  at_state(78283320) {
    accept("!")
  }

  at_state(78282750) {
    accept(">")
  }

  at_state(78282200) {
    accept("<")
  }

  at_state(78281440) {
    accept(",")
  }

  at_state(78248310) {
    accept("\\+")
  }

  at_state(78247330) {
    accept("\\*")
  }

  at_state(78246780) {
    accept(":")
  }

  at_state(78246260) {
    accept(";")
  }

  at_state(78245330) {
    accept("\\/")
  }

  at_state(78244350) {
    accept("\\^")
  }

  at_state(78243360) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 78242120 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(78242120) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 78241090 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(78241090) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("u") { switch_to 78212170 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(78212170) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 78211360 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(78211360) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("n") { switch_to 78210720 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(78210720) {
    accept("return")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(78209730) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(78205830) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 78205830 }
  }

  at_state(77987290) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 77949920 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77949920) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 77949030 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77949030) {
    accept("def")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77832460) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 77831570 }
    for_characters("m") { switch_to 77792570 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77831570) {
    accept("if")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77792570) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("p") { switch_to 77791670 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77791670) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("o") { switch_to 77790670 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77790670) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 77789810 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77789810) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 77788950 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77788950) {
    accept("import")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77646610) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 77645700 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77645700) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 77644890 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77644890) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 77643970 }
    for_characters("e") { switch_to 77601140 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77643970) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 77643040 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77643040) {
    accept("elsif")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77601140) {
    accept("else")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77456400) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a") { switch_to 77455520 }
    for_characters("b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77455520) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 77454780 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77454780) {
    accept("var")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77411250) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 77410590 }
    for_characters("t") { switch_to 77373770 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77410590) {
    accept("as")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77373770) {
    accept("at")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77340600) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("h") { switch_to 77339750 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77339750) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 77339370 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77339370) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 77338950 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77338950) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 77338570 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77338570) {
    accept("while")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77228660) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 77228020 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77228020) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("x") { switch_to 77227540 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77227540) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 77226940 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77226940) {
    accept("next")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 78209730 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 78205830 }
  }

  at_state(77097370) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 77097370 }
    for_characters("\\") { switch_to 77050880 }
    for_characters("\"") { switch_to 77036110 }
  }

  at_state(77050880) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "\"", "'", "<", ",", ">", "-", " ", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "\\", "|", "{", "}", "/", "^", "$") { switch_to 77050300 }
  }

  at_state(77050300) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 77050300 }
    for_characters("\\") { switch_to 77050880 }
    for_characters("\"") { switch_to 77036110 }
  }

  at_state(77036110) {
    accept("\"([^\"\\\\]*(\\\\.[^\"\\\\]*)*)\"")
  }

  at_state(77027640) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 77027640 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 77024830 }
  }

  at_state(77024830) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 77024830 }
  }

  at_state(77005770) {
    accept("\\d*(\\.\\d+)?")
    for_characters("x") { switch_to 77005100 }
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 77001410 }
    for_characters(".") { switch_to 77000900 }
  }

  at_state(77005100) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 77004380 }
  }

  at_state(77004380) {
    accept("0x[0-9a-fA-F]+")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 77004380 }
  }

  at_state(77001410) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 77001410 }
    for_characters(".") { switch_to 77000900 }
  }

  at_state(77000900) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 77000460 }
  }

  at_state(77000460) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 77000460 }
  }

  at_state(76996020) {
    accept("\\s+")
    for_characters(" ", "\r", "\n", "\t") { switch_to 76996020 }
  }

end