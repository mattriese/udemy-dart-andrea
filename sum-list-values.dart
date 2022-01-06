void main() {
  String sumList(List<int> nums) {
    var sum = 0;
    if (nums.isEmpty) {
      return "list is empty";
    } else {
      for (var num in nums) {
        sum += num;
      }
      return sum.toString();
    }
  }

  final sum = sumList([1, 3, 5]);
  print(sum);
}
