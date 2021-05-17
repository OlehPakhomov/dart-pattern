import 'algorithm.dart';
import 'string_converter.dart';

class Facade {
  String code(String message, int rot, String loc) {
    StringConverter stringConverter = StringConverter();
    Algorithm algorithm = Algorithm();
    return stringConverter.joinString(algorithm.coder(message, rot, loc));
  }

  String decode(String code, int rot, String loc) {
    StringConverter stringConverter = StringConverter();
    Algorithm algorithm = Algorithm();
    return stringConverter.joinString(algorithm.decoder(code, rot, loc));
  }
}
