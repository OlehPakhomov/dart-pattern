import 'dart:io';
import 'dart:math';

import 'ship.dart';

class Pilot {
  AirShip _airShip;
  bool _allReady;
  bool _myState;

  Pilot(AirShip airShip) {
    _airShip = airShip;
    _allReady = false;
    Random randomSatateGenerator = Random();
    _myState = randomSatateGenerator.nextBool();
  }

  //Проверка готовности к полету
  void chek() {
    if (_airShip.getReady() && _myState == true) {
      print("All ready!!!");
      sleep(Duration(seconds: 5));
      _airShip.takeOff();
      flight();
      return;
    }
    if (_airShip.getReady() == false) {
      return print("AirShip not ready!!!");
    }
    if (_myState == false) {
      return print("I am not ready!!!");
    }
    print("Nothing is ready!!!");
  }

  //Выполнение полета
  void flight() {
    while (_airShip.getHeight() < _airShip.getMaxHeight()) {
      _airShip.climb(1000);
    }
    while (_airShip.getHeight() > 200) {
      _airShip.decline(400);
    }
    _airShip.landing();
  }
}
