import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart totals.dart <inputfile.csv>');
    exit(1);
  }
  final inputFile = arguments.first;
  print(inputFile);
}
