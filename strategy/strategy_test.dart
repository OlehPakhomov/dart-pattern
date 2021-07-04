import 'context.dart';
import 'startegy_interface.dart';
import 'strategy.dart';

void main() {
  String string = "Dart strategy pattern";
  Strategy strategys = Strategy.upper;

  ContextStrategy context = ContextStrategy(string, strategys);
  context.executeStrategy();

  context.strategy = StrategyUnicode(string);
  context.executeStrategy();

  context.strategy = StrategyLowerCase(string);
  context.executeStrategy();
}
