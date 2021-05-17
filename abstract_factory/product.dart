//Products
abstract class Tshirt {
  void sewing();
}

abstract class Trousers {
  void sewing();
}

//Sports
class SportTshirt implements Tshirt {
  @override
  void sewing() {
    print("To sew a SPORTS t-shirt!");
  }
}

class SportTrousers implements Trousers {
  @override
  void sewing() {
    print("To sew a SPORTS trousers!");
  }
}

//Casual
class CasualTshirt implements Tshirt {
  @override
  void sewing() {
    print("To sew a CASUAL t-shirt!");
  }
}

class CasualTrousers implements Trousers {
  @override
  void sewing() {
    print("To sew a CASUAL trousers!");
  }
}
