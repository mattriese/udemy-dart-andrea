import 'dart:io';
import 'dart:math';

enum Options {
  rock,
  paper,
  scissors,
}
void main() {
  while (true) {
    stdout.write('Rock, paper, or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      print('Selected: $input\n');
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input\n');
    }

    final rng = new Random();
    final aiMove = rng.nextInt(3);
    var aiMoveString;
    switch (aiMove) {
      case 0:
        aiMoveString = Options.rock.name;
        break;
      case 1:
        aiMoveString = Options.paper;
        break;
      case 2:
        aiMoveString = Options.scissors;
        break;
    }

    if (input == 'r' && aiMoveString == Options.scissors ||
        input == 'p' && aiMoveString == Options.rock ||
        input == 's' && aiMoveString == Options.paper) {
      print(
          'You: $input \nAI: ${aiMoveString.toString().substring(aiMoveString.toString().indexOf('.') + 1)} \nYOU WIN!!\n');
    } else if (input == 'p' && aiMoveString == Options.scissors ||
        input == 's' && aiMoveString == Options.rock ||
        input == 'r' && aiMoveString == Options.paper) {
      print(
          'You: $input \nAI: ${aiMoveString.toString().substring(aiMoveString.toString().indexOf('.') + 1)} \nYOU LOSE!!\n');
    } else if (input == 's' && aiMoveString == Options.scissors ||
        input == 'r' && aiMoveString == Options.rock ||
        input == 'p' && aiMoveString == Options.paper) {
      print(
          'You: $input \nAI: ${aiMoveString.toString().substring(aiMoveString.toString().indexOf('.') + 1)} \nTIE!!\n');
    }
  }
}
