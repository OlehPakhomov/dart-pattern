import 'product.dart';

abstract class GarmentsFactory {
  Tshirt createTshirt();
  Trousers createTrousers();
}

class SportsFactory implements GarmentsFactory {
  @override
  Tshirt createTshirt() {
    return SportTshirt();
  }

  @override
  Trousers createTrousers() {
    return SportTrousers();
  }
}

class CasualFactory implements GarmentsFactory {
  @override
  Tshirt createTshirt() {
    return CasualTshirt();
  }

  @override
  Trousers createTrousers() {
    return CasualTrousers();
  }
}
