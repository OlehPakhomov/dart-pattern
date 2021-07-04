abstract class StringFormat {
  String _sourceString;
  String _formattedString;

  StringFormat(this._sourceString);

  void sourceStringOutput() {
    print("Source string: $_sourceString");
  }

  int getLenght() {
    return _sourceString.length;
  }

  void formattedString();

  void formattedStringOutput();
}

class StringToUpperWordFormat extends StringFormat {
  List<String> _subString;

  StringToUpperWordFormat(String sourceString) : super(sourceString);

  void formattedString() {
    _formattedString = _sourceString.toUpperCase();
    _subString = _formattedString.split(" ");
  }

  void formattedStringOutput() {
    print("Formatted string: ");
    _subString.forEach((element) {
      print(element);
    });
  }
}

class StringToLowerFormat extends StringFormat {
  StringToLowerFormat(String sourceString) : super(sourceString);

  void formattedString() {
    _formattedString = _sourceString.toLowerCase();
    _formattedString = _formattedString.replaceAll(" ", ".");
  }

  void formattedStringOutput() {
    print("Formatted string: $_formattedString");
  }
}
