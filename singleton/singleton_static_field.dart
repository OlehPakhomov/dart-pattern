class SingletonStorageSF {
  final List<String> _storage = [];

  SingletonStorageSF._privateConstructor();

  static final SingletonStorageSF _instance =
      SingletonStorageSF._privateConstructor();

  static SingletonStorageSF get instance => _instance;

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
