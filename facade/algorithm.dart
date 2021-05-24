import 'alphabet.dart';
import 'string_converter.dart';

class Algorithm {
  List<String> coder(String string, int rot, String loc) {
    int innerRot;
    Alphabet alphabet = Alphabet();
    StringConverter strConverter = StringConverter();
    List<String> resultString = [];
    List<String> currentString = strConverter.splitString(string);
    for (int i = 0; i < currentString.length; i++) {
      if (currentString[i] == ' ') {
        resultString.add(currentString[i]);
      } else {
        innerRot = (alphabet.indexLettetr(currentString[i], loc) + rot) %
            alphabet.getSize(loc);
        resultString.add(alphabet.getLetter(innerRot, loc));
      }
    }
    return resultString;
  }

  List<String> decoder(String string, int rot, String loc) {
    int innerRot;
    Alphabet alphabet = Alphabet();
    StringConverter strConverter = StringConverter();
    List<String> resultString = List();
    List<String> currentString = strConverter.splitString(string);
    for (int i = 0; i < currentString.length; i++) {
      if (currentString[i] == ' ') {
        resultString.add(currentString[i]);
      } else {
        innerRot = (alphabet.indexLettetr(currentString[i], loc) - rot) %
            alphabet.getSize(loc);
        resultString.add(alphabet.getLetter(innerRot, loc));
      }
    }
    return resultString;
  }
}
