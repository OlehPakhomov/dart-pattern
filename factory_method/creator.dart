import 'product.dart';

abstract class Car {
  int _doors;
  String _color;
  String _body;

  set doors(int nDoors) => _doors = nDoors;
  set color(String anyColor) => _color = anyColor;
  set body(String concretBody) => _body = concretBody;

  int get doors => _doors;
  String get body => _body;
  String get color => _color;

  void assemblyCar() {
    Engine carEngine = createEngine();
    print(carEngine.startEngine());
    print('Car colors: $_color');
    print('Car body: $_body');
    print('Car doors: $_doors');
    print(carEngine.stopEngine());
  }

  Engine createEngine();
}

class LadaPriora extends Car {
  @override
  Engine createEngine() {
    return EngineGasoline();
  }
}

class NissanLeaf extends Car {
  @override
  Engine createEngine() {
    return EngineElectric();
  }
}
