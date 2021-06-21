import 'display.dart';
import 'format.dart';
import 'number_interface.dart';

void main() {
  List<NumberData> numberData = Display.display(10, Formats.hex);
  numberData.forEach((element) {
    element.printNumberData();
  });

  numberData = Display.display(100, Formats.all);
  numberData.forEach((element) {
    element.printNumberData();
  });
}
