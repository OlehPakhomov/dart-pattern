abstract class Engine {
  String startEngine();
  String stopEngine();
}

class EngineGasoline implements Engine {
  @override
  String startEngine() {
    return 'Gasoline engine is started!';
  }

  @override
  String stopEngine() {
    return 'Gasoline engine is stopped!';
  }
}

class EngineDiesel implements Engine {
  @override
  String startEngine() {
    return 'Diesel engine is started!';
  }

  @override
  String stopEngine() {
    return 'Diesel engine is stopped!';
  }
}

class EngineElectric implements Engine {
  @override
  String startEngine() {
    return 'Electric engine is started!';
  }

  @override
  String stopEngine() {
    return 'Electric engine is stopped!';
  }
}
