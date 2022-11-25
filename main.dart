import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rand = Random();
  while (true) {
    print("Pierre, Papier ou ciseaux ? (p/pa/c)");
    final input = stdin.readLineSync();
    if (input == "p" || input == "pa" || input == "c") {
      var playerMove;
      if (input == "p") {
        playerMove = Move.rock;
      } else if (input == "pa") {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = rand.nextInt(3);
      final aiMove = Move.values[random];
      print("Vous avez joué: $playerMove");
      print("L'AI a joué: $aiMove");
      if (playerMove == aiMove) {
        print("C'est un match nul");
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print("Vous avez gagné");
      } else {
        print("Vous avez perdu");
      }
    } else if (input == "q") {
      break;
    } else {
      print('Entrée invalid');
    }
  }
}
