void main() {
  String text1 = 'silenT';
  String text2 = 'listen';

  String text3 = 'a gentleman';
  String text4 = 'elegant man';

  String text5 = 'froed';
  String text6 = 'frief';

  print(
      'Are ${text1} and ${text2} anagram? Result: ${isAnagram(text1, text2)} \n');
  print(
      'Are ${text3} and ${text4} anagram? Result: ${isAnagram(text3, text4)} \n');
  print(
      'Are ${text5} and ${text6} anagram? Result: ${isAnagram(text5, text6)} \n');
}

bool isAnagram(String str1, String str2) {
  var listStr1 = str1.toLowerCase().replaceAll(' ', '').split('');
  listStr1.sort();
  var listStr2 = str2.toLowerCase().replaceAll(' ', '').split('');
  listStr2.sort();

  if (listStr1.length != listStr2.length) {
    return false;
  }

  return listStr1.join() == listStr2.join() ? true : false;
}
