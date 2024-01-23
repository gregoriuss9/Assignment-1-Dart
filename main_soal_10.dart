void main() {
  List<num> arrayNum1 = [1, 3, 5, 7];
  List<num> arrayNum2 = [1, 3, 5, 9];

  print(
      "Is ${arrayNum1} arithmetic series? Result: ${isArithmetic(arrayNum1)}");
  print(
      "Is ${arrayNum2} arithmetic series? Result: ${isArithmetic(arrayNum2)}");
}

bool isArithmetic(List<num> randArray) {
  List<num> emptyArr = [];
  for (int i = 0; i < randArray.length - 1; i++) {
    emptyArr.add(randArray[i + 1] - randArray[i]);
  }
  print('============');
  var dummy_result = true;
  for (int i = 0; i < emptyArr.length - 1; i++) {
    if (emptyArr[i] != emptyArr[i + 1]) {
      dummy_result = false;
      break;
    }
  }
  return dummy_result;
}
