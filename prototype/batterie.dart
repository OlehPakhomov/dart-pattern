import 'dart:math';

//Батарейка
abstract class Batterie {
  double _voltage;
  String _element;

  Batterie(this._voltage, this._element);

  Batterie.clone(Batterie sourceBatterie) {
    _voltage = sourceBatterie._voltage;
    _element = sourceBatterie._element;
  }

  Batterie clone();
  void produce();
}

//Батарейка типа ААА
class AaaBatterie extends Batterie {
  double _radius;
  double _width;
  AaaBatterie(double voltage, String element, this._radius, this._width)
      : super(voltage, element);

  AaaBatterie.clone(AaaBatterie source) : super.clone(source) {
    _radius = source._radius;
    _width = source._width;
  }

  @override
  Batterie clone() {
    return AaaBatterie.clone(this);
  }

  @override
  void produce() {
    print("Volume batterie AAA: ${pi * pow(this._radius, 2) * this._width}");
  }
}

//Батарейка типа Крона
class CrBatterie extends Batterie {
  double _height;
  double _width;
  double _length;
  CrBatterie(
      double voltage, String element, this._height, this._width, this._length)
      : super(voltage, element);

  CrBatterie.clone(CrBatterie source) : super.clone(source) {
    _height = source._height;
    _width = source._width;
    _length = source._length;
  }

  @override
  Batterie clone() {
    return CrBatterie.clone(this);
  }

  @override
  void produce() {
    print(
        "Volume batterie CRONA: ${this._height * this._width * this._length}");
  }
}
