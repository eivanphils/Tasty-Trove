import 'dart:math';

class RandomNumber {
  static int getRandomNumber() {
    Random random = Random();
    return random.nextInt(5);
  }
}
