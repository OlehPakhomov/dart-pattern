import 'dart:io';
import 'dart:math';

import 'ship.dart';

class Pilot {
  AirShip _airShip;
  bool _allReady;
  bool _myState;

  Pilot(AirShip airShip) {
    this._airShip = airShip;
    this._allReady = false;
    Random randomSatateGenerator = Random();
    this._myState = randomSatateGenerator.nextBool();
  }

  //Проверка готовности к полету
  void chek() {
    if (this._airShip.getReady() && this._myState == true) {
      print("All ready!!!");
      sleep(Duration(seconds: 5));
      this._airShip.takeOff();
      flight();
    } else {
      if (this._airShip.getReady() == false)
        print("AirShip not ready!!!");
      else if (_myState == false)
        print("I am not ready!!!");
      else
        print("Nothing is ready!!!");
    }
  }

  //Выполнение полета
  void flight() {
    while (this._airShip.getHeight() < this._airShip.getMaxHeight()) {
      this._airShip.climb(1000);
    }
    while (this._airShip.getHeight() > 200) {
      this._airShip.decline(400);
    }
    this._airShip.landing();
  }
}
