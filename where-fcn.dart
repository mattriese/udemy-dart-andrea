void main() {
  const list = [1, 2, 3, 4];
  print(where<int>(list, (x) => x % 2 == 0));
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
