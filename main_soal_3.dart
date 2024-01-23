void main() {
  List<int> array_number = [0, -1, -30, 1, 2, 3, 4];
  List<int> array_number_1 = [2, 3, 8, 10, 234, 42, 57, 23, 11];

  print('${array_number} ======== PERTAMA');
  print('${array_number_1} ======== KEDUA \n');

  List<int> prime_numbers = checkPrime(array_number);
  List<int> prime_numbers_1 = checkPrime(array_number_1);
  print('${prime_numbers} ======== PRIMA PERTAMA');
  print('${prime_numbers_1} ======== PRIMA KEDUA');
}

List<int> checkPrime(List<int> numbers) {
  List<int> primeNumbers = [...numbers];
  for (int num in numbers) {
    if (num <= 1) {
      primeNumbers.remove(num);
    }
    for (var i = 2; i < num; i++) {
      if (num % i == 0) {
        primeNumbers.remove(num);
      }
    }
  }
  return primeNumbers;
}
