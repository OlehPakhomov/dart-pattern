import 'startegy_interface.dart';
import 'strategy.dart';

class ContextStrategy {
  StrategyInterface _strategy;

  set strategy(StrategyInterface value) => this._strategy = value;

  ContextStrategy(String string, Strategy strategys) {
    switch (strategys) {
      case Strategy.lower:
        _strategy = StrategyLowerCase(string);
        break;
      case Strategy.upper:
        _strategy = StrategyUperCase(string);
        break;
      case Strategy.code:
        _strategy = StrategyUnicode(string);
        break;
    }
  }

  void executeStrategy() {
    _strategy.printString();
  }
}
