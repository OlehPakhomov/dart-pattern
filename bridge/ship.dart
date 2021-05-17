//Абстрактный класс воздушного корабля
abstract class AirShip {
  void takeOff();
  void climb(int metersValue);
  void decline(int metersValue);
  void landing();
  int getHeight();
  int getMaxHeight();
  bool getReady();
}

//Реализация ракеты
class Rocket implements AirShip {
  static const int _maxHeight = 20000;
  double _temperature;
  int _speed;
  int _height;
  bool _isReady;

  Rocket() {
    _height = 0;
    _speed = 0;
    _temperature = 50;
    _isReady = true;
  }

  int getHeight() => _height;

  int getMaxHeight() => _maxHeight;

  bool getReady() {
    _temperature == 50 ? _isReady = true : _isReady = false;
    return _isReady;
  }

  void takeOff() {
    _height += 1000;
    _temperature -= 5;
    _speed += 200;
    print(
        "Rocket is TAKE OFF off, height is $_height, temperature is $_temperature and speed is $_speed!");
  }

  void climb(int metersValue) {
    _height += metersValue;
    _temperature -= metersValue * 0.01;
    _speed += (metersValue * 0.1).toInt();
    print(
        "Rocket is CLIMB, height is $_height, temperature is $_temperature and speed is $_speed!");
  }

  void decline(int metersValue) {
    _height -= metersValue;
    _temperature += metersValue * 0.01;
    _speed -= (metersValue * 0.1).toInt();
    print(
        "Rocket is DECLINE, height is $_height, temperature is $_temperature and speed is $_speed!");
  }

  void landing() {
    _height = 0;
    _temperature = 20;
    _speed = 0;
    print(
        "Rocket is LANDING, height is $_height, temperature is $_temperature and speed is $_speed!");
  }
}

//Реализация самолета
class Airplane implements AirShip {
  final int _maxHeight = 3000;
  double _temperature;
  int _speed;
  int _height;
  bool _isReady;

  AirPlane() {
    _height = 0;
    _speed = 0;
    _temperature = 30;
  }

  int getHeight() => _height;

  int getMaxHeight() => _maxHeight;

  bool getReady() {
    _temperature == 30 ? _isReady = true : _isReady = false;
    return _isReady;
  }

  void takeOff() {
    _height += 200;
    _temperature -= 1;
    _speed += 30;
    print(
        "AirPlane is TAKE OFF off, height is $_height, temperature is $_temperature and speed is $_speed!");
  }

  void climb(int metersValue) {
    _height += metersValue;
    _temperature -= metersValue * 0.001;
    _speed += (metersValue * 0.01).toInt();
    print(
        "AirPlane is CLIMB, height is $_height, temperature is $_temperature and speed is $_speed!");
  }

  void decline(int metersValue) {
    _height -= metersValue;
    _temperature += metersValue * 0.001;
    _speed -= (metersValue * 0.01).toInt();
    print(
        "AirPlane is DECLINE, height is $_height, temperature is $_temperature and speed is $_speed!");
  }

  void landing() {
    _height = 0;
    _temperature = 30;
    _speed = 0;
    print(
        "AirPlane is LANDING, height is $_height, temperature is $_temperature and speed is $_speed!");
  }
}
