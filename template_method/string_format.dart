abstract class StringFormat {
  String _sourceString;
  String _formattedString;

  StringFormat(this._sourceString);

  sourceStringOutput() {
    print("Source string: $_sourceString");
  }

  int getLenght() {
    return _sourceString.length;
  }

  formattedString();

  formattedStringOutput();
}

class StringToUpperWordFormat extends StringFormat {
  List<String> _subString;

  StringToUpperWordFormat(String sourceString) : super(sourceString);

  formattedString() {
    _formattedString = _sourceString.toUpperCase();
    _subString = _formattedString.split(" ");
  }

  formattedStringOutput() {
    print("Formatted string: ");
    _subString.forEach((element) {
      print(element);
    });
  }
}

class StringToLowerFormat extends StringFormat {
  StringToLowerFormat(String sourceString) : super(sourceString);

  formattedString() {
    _formattedString = _sourceString.toLowerCase();
    _formattedString = _formattedString.replaceAll(" ", ".");
  }

  formattedStringOutput() {
    print("Formatted string: $_formattedString");
  }
}
