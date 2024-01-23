void main() {
  String input = 'I loVe coding!';
  String output = passwordGenerator(input);
  print('Input: $input');
  print('Output: $output');
}

String passwordGenerator(String input) {
  String result = '';

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (char.compareTo('a') >= 0 && char.compareTo('z') <= 0) {
      // Handle lowercase letters
      result += String.fromCharCode(
          (char.codeUnitAt(0) - 'a'.codeUnitAt(0) + 2) % 26 +
              'A'.codeUnitAt(0));
    } else if (char.compareTo('A') >= 0 && char.compareTo('Z') <= 0) {
      // Handle uppercase letters
      result += String.fromCharCode(
          (char.codeUnitAt(0) - 'A'.codeUnitAt(0) + 2) % 26 +
              'a'.codeUnitAt(0));
    } else {
      // Handle non-alphabetic characters (including spaces)
      result += '_';
    }
  }

  return result;
}
