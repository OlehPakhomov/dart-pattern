import 'batterie.dart';

main() {
  //Создание и инициализация
  AaaBatterie aaaBatterie1 = AaaBatterie(1.5, 'alkaline', 15, 45);
  aaaBatterie1.produce();
  CrBatterie crBatterie1 = CrBatterie(9, 'alkaline', 20, 35, 50);
  crBatterie1.produce();

  //Клонирование
  AaaBatterie aaaBatterie2 = AaaBatterie.clone(aaaBatterie1);
  CrBatterie crBatterie2 = CrBatterie.clone(crBatterie1);

  //Проверка
  aaaBatterie2.produce();
  crBatterie2.produce();
}
