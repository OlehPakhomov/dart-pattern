import 'ready_smartphone.dart';
import 'smartphone_base.dart';

import 'parameters.dart';

class SmartphoneFactory {
  static final List<SmartphoneBase> smartphoneBases = [];
  static SmartphoneBase getSmartphoneBase(
      Brands brandName, int ram, int rom, int camera, Colors color) {
    int tempIndex = chekBase(SmartphoneBase(
      brandName,
      ram,
      rom,
      camera,
      color,
    ));
    return smartphoneBases[tempIndex];
  }

  static int chekBase(SmartphoneBase smartphoneBase) {
    int index = -1;
    for (int i = 0; i < smartphoneBases.length; i++) {
      if (smartphoneBases[i].brandName == smartphoneBase.brandName &&
          smartphoneBases[i].camera == smartphoneBase.camera &&
          smartphoneBases[i].ram == smartphoneBase.ram &&
          smartphoneBases[i].rom == smartphoneBase.rom &&
          smartphoneBases[i].color == smartphoneBase.color) {
        print("Object exists!!!");
        index = i;
      }
      ;
    }
    if (index == -1) {
      smartphoneBases.add(smartphoneBase);
      print("Object created!!!");
      index = smartphoneBases.length - 1;
    }
    return index;
  }
}
