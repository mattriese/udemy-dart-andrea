void main() {
  const a = {1, 3};
  const b = {3, 5};
  outerJoin(Set<int> a, Set<int> b) {
    Set<int> uniqueToA = a.difference(b);
    Set<int> uniqueToB = b.difference(a);
    return uniqueToA.union(uniqueToB);
  }

  var uniques = outerJoin(a, b);
  print(uniques);
  int sum = 0;
  for (var num in uniques) {
    sum += num;
  }
  print(sum);
}

//his version

void main_() {
  const a = {1, 3};
  const b = {3, 5};
  final c = a.union(b).difference(a.intersection(b));
  print(c);
  var sum = 0;
  for (var value in c) {
    sum += value;
  }
  print(sum);
}
