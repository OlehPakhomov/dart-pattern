import 'computer.dart';
import 'notebook.dart';

abstract class Builder {
  void setCPU(int configId);
  void setRAM(int ram, String ramType);
  void setGPU(int ramMemory, String gpuType);
  void setStorage(int storage, String storageType);
  void setDVD(bool dvd);
}

class ComputerBuilder implements Builder {
  Computer _computer = Computer();

  @override
  void setCPU(int configId) {
    switch (configId) {
      case 1:
        _computer.cpuName = "AMD Ryzen 5";
        _computer.cpuCore = 6;
        _computer.cpuThread = 12;
        break;
      case 2:
        _computer.cpuName = "Intel Core i7";
        _computer.cpuCore = 8;
        _computer.cpuThread = 8;
        break;
      default:
        _computer.cpuName = "AMD Ryzen 5";
        _computer.cpuCore = 6;
        _computer.cpuThread = 12;
    }
  }

  @override
  void setDVD(bool dvd) {
    _computer.dvd = dvd;
  }

  @override
  void setGPU(int ramMemory, String gpuType) {
    _computer.gpuType = gpuType;
    _computer.gpuMemory = ramMemory;
  }

  @override
  void setRAM(int ram, String ramType) {
    _computer.ram = ram;
    _computer.ramType = ramType;
  }

  @override
  void setStorage(int storage, String storageType) {
    _computer.storage = storage;
    _computer.storageType = storageType;
  }

  Computer getComputer() => _computer;
}

class NotebookBuilder implements Builder {
  Notebook _notebook = Notebook();

  @override
  void setCPU(int configId) {
    switch (configId) {
      case 1:
        _notebook.cpuName = "AMD Turion";
        _notebook.cpuCore = 4;
        _notebook.cpuThread = 4;
        break;
      case 2:
        _notebook.cpuName = "Intel Atom";
        _notebook.cpuCore = 2;
        _notebook.cpuThread = 2;
        break;
      default:
        _notebook.cpuName = "Intel Atom";
        _notebook.cpuCore = 2;
        _notebook.cpuThread = 2;
    }
  }

  @override
  void setDVD(bool dvd) {
    _notebook.dvd = dvd;
  }

  @override
  void setGPU(int ramMemory, String gpuType) {
    _notebook.gpuType = gpuType;
    _notebook.gpuMemory = ramMemory;
  }

  @override
  void setRAM(int ram, String ramType) {
    _notebook.ram = ram;
    _notebook.ramType = ramType;
  }

  @override
  void setStorage(int storage, String storageType) {
    _notebook.storage = storage;
    _notebook.storageType = storageType;
  }

  Notebook getNotebook() => _notebook;
}
