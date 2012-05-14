class BlintzLexer < Dhaka::CompiledLexer

  self.specification = BlintzLexerSpec

  start_with 80131630

  at_state(80131630) {
    accept("\\d*(\\.\\d+)?")
    for_characters("&") { switch_to 80128270 }
    for_characters("|") { switch_to 80101460 }
    for_characters("=") { switch_to 80099960 }
    for_characters("@") { switch_to 80098170 }
    for_characters("(") { switch_to 80097340 }
    for_characters(")") { switch_to 80096300 }
    for_characters("{") { switch_to 80095240 }
    for_characters("}") { switch_to 80094200 }
    for_characters("[") { switch_to 80060650 }
    for_characters("]") { switch_to 80059880 }
    for_characters("#") { switch_to 80059640 }
    for_characters("-") { switch_to 80059400 }
    for_characters("!") { switch_to 80059150 }
    for_characters(">") { switch_to 80058870 }
    for_characters("<") { switch_to 80058310 }
    for_characters(",") { switch_to 80057360 }
    for_characters("+") { switch_to 80056380 }
    for_characters("*") { switch_to 80055430 }
    for_characters(":") { switch_to 80054400 }
    for_characters(";") { switch_to 80053400 }
    for_characters("/") { switch_to 80023900 }
    for_characters("^") { switch_to 80023160 }
    for_characters("r") { switch_to 80022610 }
    for_characters("d") { switch_to 79706660 }
    for_characters("i") { switch_to 79629660 }
    for_characters("e") { switch_to 79410290 }
    for_characters("v") { switch_to 79295660 }
    for_characters("a") { switch_to 79221840 }
    for_characters("w") { switch_to 79143840 }
    for_characters("n") { switch_to 79001430 }
    for_characters("\"") { switch_to 78956190 }
    for_characters("b", "c", "f", "g", "h", "j", "k", "l", "m", "o", "p", "q", "s", "t", "u", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 78923430 }
    for_characters("0") { switch_to 78910870 }
    for_characters("1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 78905190 }
    for_characters(".") { switch_to 78903910 }
    for_characters(" ", "\r", "\n", "\t") { switch_to 78901160 }
  }

  at_state(80128270) {
    accept("&")
    for_characters("&") { switch_to 80127080 }
  }

  at_state(80127080) {
    accept("&&")
  }

  at_state(80101460) {
    accept("\\|")
    for_characters("|") { switch_to 80100480 }
  }

  at_state(80100480) {
    accept("\\|\\|")
  }

  at_state(80099960) {
    accept("=")
    for_characters("=") { switch_to 80099160 }
  }

  at_state(80099160) {
    accept("==")
  }

  at_state(80098170) {
    accept("@")
  }

  at_state(80097340) {
    accept("\\(")
  }

  at_state(80096300) {
    accept("\\)")
  }

  at_state(80095240) {
    accept("\\{")
  }

  at_state(80094200) {
    accept("\\}")
  }

  at_state(80060650) {
    accept("\\[")
  }

  at_state(80059880) {
    accept("\\]")
  }

  at_state(80059640) {
    accept("#")
  }

  at_state(80059400) {
    accept("-")
  }

  at_state(80059150) {
    accept("!")
  }

  at_state(80058870) {
    accept(">")
  }

  at_state(80058310) {
    accept("<")
  }

  at_state(80057360) {
    accept(",")
  }

  at_state(80056380) {
    accept("\\+")
  }

  at_state(80055430) {
    accept("\\*")
  }

  at_state(80054400) {
    accept(":")
  }

  at_state(80053400) {
    accept(";")
  }

  at_state(80023900) {
    accept("\\/")
  }

  at_state(80023160) {
    accept("\\^")
  }

  at_state(80022610) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 80021690 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(80021690) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 80020620 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(80020620) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("u") { switch_to 80019540 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(80019540) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 80018400 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(80018400) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("n") { switch_to 80017330 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(80017330) {
    accept("return")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(80016330) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79983200) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 79983200 }
  }

  at_state(79706660) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 79706180 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79706180) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 79705690 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79705690) {
    accept("def")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79629660) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 79629150 }
    for_characters("m") { switch_to 79600730 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79629150) {
    accept("if")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79600730) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("p") { switch_to 79599730 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79599730) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("o") { switch_to 79598770 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79598770) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 79598000 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79598000) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 79597080 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79597080) {
    accept("import")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79410290) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 79409820 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79409820) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 79409300 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79409300) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 79408570 }
    for_characters("i") { switch_to 79398780 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79408570) {
    accept("else")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79398780) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("f") { switch_to 79397880 }
    for_characters("a", "b", "c", "d", "e", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79397880) {
    accept("elsif")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79295660) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("a") { switch_to 79294890 }
    for_characters("b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79294890) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("r") { switch_to 79293970 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79293970) {
    accept("var")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79221840) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("s") { switch_to 79220900 }
    for_characters("t") { switch_to 79185610 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79220900) {
    accept("as")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79185610) {
    accept("at")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79143840) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("h") { switch_to 79143120 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79143120) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("i") { switch_to 79142520 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79142520) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("l") { switch_to 79141570 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79141570) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 79140850 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79140850) {
    accept("while")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79001430) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("e") { switch_to 79000580 }
    for_characters("a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(79000580) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("x") { switch_to 78999860 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(78999860) {
    accept("[a-z_]+([a-zA-Z0-9_?]+)?")
    for_characters("t") { switch_to 78999490 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(78999490) {
    accept("next")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_") { switch_to 80016330 }
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "?") { switch_to 79983200 }
  }

  at_state(78956190) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 78956190 }
    for_characters("\\") { switch_to 78947990 }
    for_characters("\"") { switch_to 78940950 }
  }

  at_state(78947990) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "\"", "'", "<", ",", ">", "-", " ", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "\\", "|", "{", "}", "/", "^", "$") { switch_to 78947400 }
  }

  at_state(78947400) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "~", "`", "!", "@", "#", "%", "&", "_", "=", ":", ";", "'", "<", ",", ">", "-", " ", "\r", "\n", "\t", "(", ")", "[", "]", "+", "*", "?", ".", "|", "{", "}", "/", "^", "$") { switch_to 78947400 }
    for_characters("\\") { switch_to 78947990 }
    for_characters("\"") { switch_to 78940950 }
  }

  at_state(78940950) {
    accept("\"([^\"\\\\]*(\\\\.[^\"\\\\]*)*)\"")
  }

  at_state(78923430) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 78923430 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 78922460 }
  }

  at_state(78922460) {
    accept("[A-Z]+([a-zA-Z0-9_?]+)?")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "_", "?") { switch_to 78922460 }
  }

  at_state(78910870) {
    accept("\\d*(\\.\\d+)?")
    for_characters("x") { switch_to 78909890 }
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 78905190 }
    for_characters(".") { switch_to 78903910 }
  }

  at_state(78909890) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 78908850 }
  }

  at_state(78908850) {
    accept("0x[0-9a-fA-F]+")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F") { switch_to 78908850 }
  }

  at_state(78905190) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 78905190 }
    for_characters(".") { switch_to 78903910 }
  }

  at_state(78903910) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 78903400 }
  }

  at_state(78903400) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 78903400 }
  }

  at_state(78901160) {
    accept("\\s+")
    for_characters(" ", "\r", "\n", "\t") { switch_to 78901160 }
  }

end