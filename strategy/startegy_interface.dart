abstract class StrategyInterface {
  void printString();
}

class StrategyLowerCase implements StrategyInterface {
  String _string;

  StrategyLowerCase(this._string);

  void printString() {
    print(_string.toLowerCase());
  }
}

class StrategyUperCase implements StrategyInterface {
  String _string;

  StrategyUperCase(this._string);

  void printString() {
    print(_string.toUpperCase());
  }
}

class StrategyUnicode implements StrategyInterface {
  String _string;

  StrategyUnicode(this._string);

  void printString() {
    print(_string.codeUnits.toString());
  }
}
