import 'format.dart';
import 'number_data_decorator.dart';
import 'number_interface.dart';

class Display {
  static List<NumberData> display(int number, Formats format) {
    List<NumberData> formatsList = [];
    switch (format) {
      case Formats.dec:
        formatsList.add(DecimalNumber(number));
        break;
      case Formats.oct:
        formatsList.add(Octadecimal(DecimalNumber(number)));
        break;
      case Formats.hex:
        formatsList.add(Hexadecimal(DecimalNumber(number)));
        break;
      case Formats.all:
        formatsList.add(DecimalNumber(number));
        formatsList.add(Octadecimal(DecimalNumber(number)));
        formatsList.add(Hexadecimal(DecimalNumber(number)));
        break;
    }
    return formatsList;
  }
}
