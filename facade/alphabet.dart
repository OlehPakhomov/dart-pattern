class Alphabet {
  final List<String> _lettersUS = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  final List<String> _lettersRU = [
    'а',
    'б',
    'в',
    'г',
    'д',
    'е',
    'ё',
    'ж',
    'з',
    'и',
    'й',
    'к',
    'л',
    'м',
    'н',
    'о',
    'п',
    'с',
    'т',
    'у',
    'ф',
    'х',
    'ц',
    'ч',
    'ш',
    'щ',
    'ъ',
    'ы',
    'ь',
    'э',
    'ю',
    'я'
  ];

  String getLetter(int letterNumber, String locations) {
    if (locations == "US") return _lettersUS[letterNumber];
    return _lettersRU[letterNumber];
  }

  int indexLettetr(String letter, String locations) {
    if (locations == "US") return _lettersUS.indexOf(letter);
    return _lettersRU.indexOf(letter);
  }

  int getSize(String locations) {
    if (locations == "US") return _lettersUS.length;
    return _lettersRU.length;
  }
}
