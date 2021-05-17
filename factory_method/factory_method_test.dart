import 'creator.dart';
import 'product.dart';

void main() {
  LadaPriora lada = LadaPriora();
  NissanLeaf nissan = NissanLeaf();

  print('Lada Priora: ');
  lada.body = 'sedan';
  lada.color = 'black';
  lada.doors = 5;
  lada.assemblyCar();

  print('');

  print('Nissan Leaf');
  nissan.body = 'hatchback';
  nissan.color = 'yellow';
  nissan.doors = 5;
  nissan.assemblyCar();
}
