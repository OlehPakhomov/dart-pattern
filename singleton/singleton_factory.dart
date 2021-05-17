class SingletonStorage {
  final List<String> _storage = [];

  SingletonStorage._privateConstructor();
  static SingletonStorage _instance = SingletonStorage._privateConstructor();

  factory SingletonStorage() {
    return _instance;
  }

  void addData(String itemData) {
    _storage.add(itemData);
  }

  String getFirstItemData() {
    return _storage.first;
  }

  String getLastItemData() {
    return _storage.last;
  }
}
