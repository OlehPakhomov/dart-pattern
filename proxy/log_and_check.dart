import 'random_generator.dart';

class LogAndCheck implements RamdomGeneratorInterface {
  RamdomGeneratorInterface _rndGenerator;

  LogAndCheck(RamdomGeneratorInterface randomGenerator) {
    _rndGenerator = randomGenerator;
  }

  int getIntRandom(int max) {
    int result;
    result = _rndGenerator.getIntRandom(max);
    print("Data: ${DateTime.now()}");
    print("Random integer value: $result\n\n");
    return result;
  }

  bool getBoolRandom() {
    bool result;
    result = _rndGenerator.getBoolRandom();
    print("Data: ${DateTime.now()}");
    print("Random boolean value: $result\n\n");
    return result;
  }
}
