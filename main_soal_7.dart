void main() {
  String text_1 = 'hello world';
  String text_2 = 'Gregorius Abiyoso Kamandanu';
  print("${text_1} ==== TEKS PERTAMA");
  print("${text_2} ==== TEKS KEDUA \n");

  print(reverseString(text_1));
  print(reverseString(text_2));
}

String reverseString(String text) {
  String reverse_string = '';
  for (var i = text.length - 1; i >= 0; i--) {
    reverse_string += text[i];
  }
  return reverse_string;
}
