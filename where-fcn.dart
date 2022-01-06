void main() {
  const list = [1, 2, 3, 4];
  //print(where<int>(list, (x) => x % 2 == 0));
  final five = firstWhere(list, (x) => x == 2, orElse: () => -1);
  print(five);
}

List<T> where<T>(List<T> items, bool Function(T) f) {
  var result = <T>[];
  for (var item in items) {
    if (f(item)) {
      result.add(item);
    }
  }
  return result;
}

T firstWhere<T>(List<T> items, bool Function(T) f,
    {required Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}
