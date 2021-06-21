import 'string_format.dart';

main() {
  StringToUpperWordFormat stringFormat1 = StringToUpperWordFormat(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.");

  StringToLowerFormat stringFormat2 = StringToLowerFormat(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.");

  stringFormat1.sourceStringOutput();
  print("String lenght: ${stringFormat1.getLenght()}");
  stringFormat1.formattedString();
  stringFormat1.formattedStringOutput();

  print("");

  stringFormat2.sourceStringOutput();
  print("String lenght: ${stringFormat1.getLenght()}");
  stringFormat2.formattedString();
  stringFormat2.formattedStringOutput();
}
