import 'dart:math';

abstract class RamdomGeneratorInterface {
  int getIntRandom(int max);
  bool getBoolRandom();
}

class RandomGen implements RamdomGeneratorInterface {
  int getIntRandom(int max) {
    Random rndInt = Random();
    return rndInt.nextInt(max);
  }

  bool getBoolRandom() {
    Random rndBool = Random();
    return rndBool.nextBool();
  }
}
