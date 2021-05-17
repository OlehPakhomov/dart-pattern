class StringConverter {
  List<String> splitString(String string) {
    List<String> result =
        string.runes.map((rune) => new String.fromCharCode(rune)).toList();
    return result;
  }

  String joinString(List<String> listLetters) => listLetters.join();
}
