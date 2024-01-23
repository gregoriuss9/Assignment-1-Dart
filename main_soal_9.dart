void main() {
  List<num> numArray = [1, 2, 5, 7, 7, 10, 1, 2, 3, 1];
  print('Array=${numArray} has mode value = \n ${mode(numArray)}');
}

List<num> mode(List<num> a) {
  var modeMap = <num, int>{};
  var maxCount = 0;

  for (var i = 0; i < a.length; ++i) {
    if (modeMap.containsKey(a[i])) {
      modeMap[a[i]] = modeMap[a[i]]! + 1;
    } else {
      modeMap[a[i]] = 1;
    }

    if (modeMap[a[i]]! > maxCount) {
      maxCount = modeMap[a[i]]!;
    }
  }

  var modes = <num>[];
  modeMap.forEach((key, value) {
    if (value == maxCount) {
      modes.add(key);
    }
  });

  return modes;
}
