import 'number_interface.dart';

class NumberDataDecorator implements NumberData {
  DecimalNumber _decorator;

  NumberDataDecorator(DecimalNumber numberData) {
    _decorator = numberData;
  }

  @override
  String getNumber() {
    return _decorator.getNumber();
  }

  @override
  void printNumberData() {
    _decorator.printNumberData();
  }
}

class Hexadecimal extends NumberDataDecorator {
  Hexadecimal(NumberData numberData) : super(numberData);

  @override
  String getNumber() {
    return int.parse(super.getNumber(), radix: 16).toString();
  }

  @override
  void printNumberData() {
    print("Hexadecimal number: ${int.parse(super.getNumber(), radix: 16)}");
  }
}

class Octadecimal extends NumberDataDecorator {
  Octadecimal(DecimalNumber numberData) : super(numberData);

  @override
  String getNumber() {
    return int.parse(super.getNumber(), radix: 8).toString();
  }

  @override
  void printNumberData() {
    print("Octadecimal number: ${int.parse(super.getNumber(), radix: 8)}");
  }
}
