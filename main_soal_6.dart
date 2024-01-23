void main() {
  int limit = 6;
  print("For limit=${limit}, \n the series is: ${fibonacciSeries(limit)} \n");
  int limit2 = 10;
  print("For limit=${limit2}, \n the series is: ${fibonacciSeries(limit2)}");
}

List<num> fibonacciSeries(int angka) {
  var array_result = <num>[];

  if (angka < 1) {
    return array_result;
  } else if (angka == 1) {
    array_result = [0];
  } else if (angka == 2) {
    array_result = [0, 1];
  } else {
    array_result = [0, 1];
    for (var i = 0; i < angka - 2; i++) {
      array_result.add(array_result[i] + array_result[i + 1]);
    }
  }
  return array_result;
}
