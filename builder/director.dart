import 'builder_interface.dart';
import 'computer.dart';

class Director {
  void officeConfiguration(Builder builder) {
    builder.setCPU(2);
    builder.setRAM(4, "DDR-4");
    builder.setDVD(true);
    builder.setGPU(2, "builtin");
    builder.setStorage(250, "HDD");
  }

  void gameConfiguration(Builder builder) {
    builder.setCPU(1);
    builder.setRAM(16, "DDR-4");
    builder.setDVD(false);
    builder.setGPU(8, "discrete");
    builder.setStorage(1000, "SSD");
  }
}
