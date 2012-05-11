class BlintzLexer < Dhaka::CompiledLexer

  self.specification = BlintzLexerSpec

  start_with 88642590

  at_state(88642590) {
    accept("\\d*(\\.\\d+)?")
    for_characters("=") { switch_to 88642250 }
    for_characters("-") { switch_to 88642090 }
    for_characters("!") { switch_to 88641930 }
    for_characters(">") { switch_to 88641770 }
    for_characters("<") { switch_to 88641610 }
    for_characters(",") { switch_to 88641450 }
    for_characters("+") { switch_to 88641290 }
    for_characters("*") { switch_to 88641130 }
    for_characters("(") { switch_to 88640970 }
    for_characters(")") { switch_to 88640810 }
    for_characters("{") { switch_to 88640650 }
    for_characters("}") { switch_to 88640490 }
    for_characters(";") { switch_to 88640330 }
    for_characters("/") { switch_to 88640170 }
    for_characters("^") { switch_to 88640010 }
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 88639850 }
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 88670470 }
    for_characters(".") { switch_to 88670110 }
    for_characters(" ", "\r", "\n", "\t") { switch_to 88669190 }
  }

  at_state(88642250) {
    accept("=")
  }

  at_state(88642090) {
    accept("-")
  }

  at_state(88641930) {
    accept("!")
  }

  at_state(88641770) {
    accept(">")
  }

  at_state(88641610) {
    accept("<")
  }

  at_state(88641450) {
    accept(",")
  }

  at_state(88641290) {
    accept("\\+")
  }

  at_state(88641130) {
    accept("\\*")
  }

  at_state(88640970) {
    accept("\\(")
  }

  at_state(88640810) {
    accept("\\)")
  }

  at_state(88640650) {
    accept("\\{")
  }

  at_state(88640490) {
    accept("\\}")
  }

  at_state(88640330) {
    accept(";")
  }

  at_state(88640170) {
    accept("\\/")
  }

  at_state(88640010) {
    accept("\\^")
  }

  at_state(88639850) {
    accept("\\w+")
    for_characters("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z") { switch_to 88639850 }
  }

  at_state(88670470) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 88670470 }
    for_characters(".") { switch_to 88670110 }
  }

  at_state(88670110) {
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 88669940 }
  }

  at_state(88669940) {
    accept("\\d*(\\.\\d+)?")
    for_characters("0", "1", "2", "3", "4", "5", "6", "7", "8", "9") { switch_to 88669940 }
  }

  at_state(88669190) {
    accept("\\s+")
    for_characters(" ", "\r", "\n", "\t") { switch_to 88669190 }
  }

end