class Computer {
  String _cpuName;
  int _cpuCore;
  int _cpuThread;
  String _ramType;
  int _ram;
  String _gpuName;
  String _gpuType;
  int _gpuMemory;
  int _storage;
  String _storageType;
  bool _dvd;

  get cpuName => this._cpuName;
  set cpuName(String value) => this._cpuName = value;

  get cpuCore => this._cpuCore;
  set cpuCore(value) => this._cpuCore = value;

  get cpuThread => this._cpuThread;
  set cpuThread(value) => this._cpuThread = value;

  get ramType => this._ramType;
  set ramType(value) => this._ramType = value;

  get ram => this._ram;
  set ram(value) => this._ram = value;

  get gpuName => this._gpuName;
  set gpuName(value) => this._gpuName = value;

  get gpuType => this._gpuType;
  set gpuType(value) => this._gpuType = value;

  get gpuMemory => this._gpuMemory;
  set gpuMemory(value) => this._gpuMemory = value;

  get storage => this._storage;
  set storage(value) => this._storage = value;

  get storageType => this._storageType;
  set storageType(value) => this._storageType = value;

  get dvd => this._dvd;
  set dvd(value) => this._dvd = value;

  void printComputer() {
    print("COMPUTER PARAMETERS:*****************************");
    print(" CPU Name: $_cpuName CPU Core: $_cpuCore CPU Thread: $_cpuThread");
    print("RAM Type: $_ramType RAM $_ram");
    print("GPU Name: $_gpuName GPU Type $_gpuType GPU Memory $_gpuMemory");
    print("Storage $_storage Storage Type: $_storageType");
    print("DVD: $_dvd");
  }
}
