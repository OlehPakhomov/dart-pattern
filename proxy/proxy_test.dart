import 'log_and_check.dart';
import 'random_generator.dart';

void main() {
  RandomGen randomGenerator = RandomGen();
  LogAndCheck logRandomValue = LogAndCheck(randomGenerator);
  List<bool> boolRandomValues = [];
  List<int> intRandomValues = [];

  for (int i = 1; i < 100; i++) {
    intRandomValues.add(logRandomValue.getIntRandom(i));
    boolRandomValues.add(logRandomValue.getBoolRandom());
  }
}
