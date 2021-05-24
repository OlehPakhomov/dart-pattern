abstract class Premises {
  double getArea();
}

class Room implements Premises {
  double _width;
  double _lenght;

  get width => _width;
  set width(double value) => _width = value;

  get lenght => _lenght;
  set lenght(double value) => _lenght = value;

  Room(double width, double lenght) {
    _width = width;
    _lenght = lenght;
  }

  @override
  double getArea() {
    return _width * _lenght;
  }
}

class Flat implements Premises {
  List<Room> _rooms = [];

  Flat(List<Room> rooms) {
    _rooms = rooms;
  }

  @override
  double getArea() {
    double areaFlat = 0;
    _rooms.forEach((element) {
      areaFlat += element.getArea();
    });
    return areaFlat;
  }
}

class Home implements Premises {
  List<Flat> _flats = [];

  Home(List<Flat> flats) {
    _flats = flats;
  }

  @override
  double getArea() {
    double areaHome = 0;
    _flats.forEach((element) {
      areaHome += element.getArea();
    });
    return areaHome;
  }
}
