import 'parameters.dart';

class SmartphoneBase {
  Brands _brandName;
  int _ram, _rom, _camera;
  Colors _color;

  get brandName => this._brandName;
  get ram => this._ram;
  get rom => this._rom;
  get camera => this._camera;
  get color => this._color;

  SmartphoneBase(
    this._brandName,
    this._ram,
    this._rom,
    this._camera,
    this._color,
  );

  void createSmartphone(String mac, String imei) {
    print("Created smatrtphone: $_brandName, ram: $_ram, rom: $_rom,"
        "camera: $_camera, color: $_color");
    print("Smartphone mac: $mac, imei: $imei");
  }
}
