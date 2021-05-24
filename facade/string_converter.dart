class StringConverter {
  List<String> splitString(String string) {
    List<String> result;
    result = string.split('');
    return result;
  }

  String joinString(List<String> listLetters) => listLetters.join();
}
