import 'smartphone_base.dart';

class ReadySmartphone {
  String _mac, _imei;
  SmartphoneBase _base;

  ReadySmartphone(String mac, String imei, SmartphoneBase base) {
    _mac = mac;
    _imei = imei;
    _base = base;
  }

  void createSmartphone() {
    _base.createSmartphone(_mac, _imei);
  }
}
