abstract class NumberData {
  void printNumberData();
  String getNumber();
}

class DecimalNumber implements NumberData {
  int _decimal_number;

  DecimalNumber(this._decimal_number);

  String getNumber() {
    return _decimal_number.toString();
  }

  void printNumberData() {
    print("Decimal number: $_decimal_number");
  }
}
