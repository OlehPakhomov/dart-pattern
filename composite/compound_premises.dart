import 'premises.dart';

class CompoundPremises implements Premises {
  List<Premises> _listPremises = [];

  add(Premises element) {
    _listPremises.add(element);
  }

  delete(int index) {
    _listPremises.removeAt(index);
  }

  @override
  double getArea() {
    double areaPremises = 0;
    _listPremises.forEach((element) {
      areaPremises += element.getArea();
    });
    return areaPremises;
  }
}
