void main() {
  final andrea = Person(name: 'Andrea', age: 36, height: 1.84);
  andrea.describe();
}

class Person {
  Person({required this.name, required this.age, required this.height}) {}

  final String name;
  int age;
  double height;
  describe() {
    print(
        "My name is ${name}. I'm ${age} years old, I'm ${height} meters tall.");
  }
}
