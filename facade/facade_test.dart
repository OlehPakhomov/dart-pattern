import 'facade.dart';

void main() {
  Facade facadeTest = Facade();

  String message = "hello dart";

  print("mes: $message");

  String code = facadeTest.code(message, 2, "US");
  print("cod: $code");

  String decodeMessage = facadeTest.decode(code, 2, "US");
  print("dec: $decodeMessage");
}
