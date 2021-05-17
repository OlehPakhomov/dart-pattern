import 'abstract_factory.dart';
import 'product.dart';

void main() {
  GarmentsFactory mainFactory;
  String styleName = 'casual';
  if (styleName == 'sport')
    mainFactory = SportsFactory();
  else if (styleName == 'casual')
    mainFactory = CasualFactory();
  else
    print('Unidentified style!');

  Tshirt mainTshirts = mainFactory.createTshirt();
  Trousers mainTrousers = mainFactory.createTrousers();

  mainTshirts.sewing();
  mainTrousers.sewing();
}
