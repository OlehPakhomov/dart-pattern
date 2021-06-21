import 'parameters.dart';
import 'ready_smartphone.dart';
import 'smartphone_base.dart';
import 'smartphone_factory.dart';

void main() {
  List<ReadySmartphone> smartphones = [];

  SmartphoneBase base1 = SmartphoneFactory.getSmartphoneBase(
    Brands.xiaomi,
    16,
    2,
    12,
    Colors.black,
  );
  SmartphoneBase base2 = SmartphoneFactory.getSmartphoneBase(
    Brands.samsung,
    32,
    2,
    24,
    Colors.gold,
  );
  SmartphoneBase base3 = SmartphoneFactory.getSmartphoneBase(
    Brands.lg,
    32,
    3,
    16,
    Colors.black,
  );
  SmartphoneBase base4 = SmartphoneFactory.getSmartphoneBase(
    Brands.samsung,
    32,
    2,
    24,
    Colors.gold,
  );
  SmartphoneBase base5 = SmartphoneFactory.getSmartphoneBase(
    Brands.xiaomi,
    16,
    2,
    12,
    Colors.black,
  );

  smartphones.add(ReadySmartphone(
    "447402-51-543765-0",
    "00:26:57:00:1f:02",
    base1,
  ));
  smartphones.add(ReadySmartphone(
    "447402-51-543765-1",
    "00:26:57:00:1c:03",
    base2,
  ));
  smartphones.add(ReadySmartphone(
    "447402-51-543765-2",
    "00:26:57:00:1d:04",
    base3,
  ));
  smartphones.add(ReadySmartphone(
    "447402-51-543765-3",
    "00:26:57:00:1e:05",
    base4,
  ));
  smartphones.add(ReadySmartphone(
    "447402-51-543765-4",
    "00:26:57:00:1a:06",
    base5,
  ));

  smartphones.forEach((element) {
    element.createSmartphone();
  });

  print("Created elements: ${SmartphoneFactory.smartphoneBases.length}");
}
