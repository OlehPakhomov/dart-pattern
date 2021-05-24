import '../bridge/ship.dart';
import 'compound_premises.dart';
import 'premises.dart';

void main() {
  //Создаем компоновщик
  CompoundPremises compoundPremises = CompoundPremises();

  //Создаем несколько комнат
  Room room1 = Room(4, 8);
  Room room2 = Room(2, 6.5);
  Room room3 = Room(5, 10);
  Room room4 = Room(2.5, 8);
  Room room5 = Room(2, 8);
  Room room6 = Room(3, 3.5);

  List<Room> roomsInFlat1 = [];
  roomsInFlat1.add(room1);
  roomsInFlat1.add(room2);

  List<Room> roomsInFlat2 = [];
  roomsInFlat2.add(room4);
  roomsInFlat2.add(room5);
  roomsInFlat2.add(room6);

  //Создаем несколько квартир
  Flat flat1 = Flat(roomsInFlat1);
  Flat flat2 = Flat(roomsInFlat2);

  List<Flat> flatsInHome1 = [];
  flatsInHome1.add(flat1);
  flatsInHome1.add(flat1);
  List<Flat> flatsInHome2 = [];
  flatsInHome2.add(flat1);
  flatsInHome2.add(flat2);
  flatsInHome2.add(flat2);

  //Создаем несколько домов
  Home home1 = Home(flatsInHome1);
  Home home2 = Home(flatsInHome2);

  //Определяем площадь
  print("Площадь команты третьего типа: ${room3.getArea()}");
  print("Площадь комнаты пятого типа: ${room5.getArea()}");

  print("Площадь квартиры первого типа: ${flat1.getArea()}");
  print("Площадь квартиры второго типа: ${flat2.getArea()}");

  print("Площадь дома первого типа: ${home1.getArea()}");
  print("Площадь дома второго типа: ${home2.getArea()}");

  //Определяем площадь через компоновщик
  print("");
  compoundPremises.add(room1);
  compoundPremises.add(room2);
  compoundPremises.add(room3);
  compoundPremises.add(room4);
  compoundPremises.add(room5);
  compoundPremises.add(room6);
  compoundPremises.add(flat1);
  compoundPremises.add(flat2);
  compoundPremises.add(home1);
  compoundPremises.add(home2);

  print("Площадь всех внесенных помещений: ${compoundPremises.getArea()}");

  compoundPremises.delete(1);
  compoundPremises.delete(7);

  print("Площадь всех внесенных помещений: ${compoundPremises.getArea()}");
}
