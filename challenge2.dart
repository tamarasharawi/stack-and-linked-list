bool Balanced(String input) {
  
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String Char = input[i];

    if (Char == '(') {
      stack.add(Char);
    } else if (Char == ')') {
      if (stack.isEmpty || stack.removeLast() != '(') {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

void main(List<String> args) {
  String one = "((()))";
  String two = "(()";
  String three = "hi its ( tamara))";
  print("is '$one' balanced? ${Balanced(one)}");
  print(" is '$two' balanced? ${Balanced(two)}");
  print(" is '$three' balanced? ${Balanced(three)}");
}
