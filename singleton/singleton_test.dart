import 'singleton_factory.dart';
import 'singleton_static_field.dart';

void main() {
  //Testing singleton factory
  print('*************************Factory******************************');
  SingletonStorage singletonTest = SingletonStorage();
  singletonTest.addData("i am first");
  singletonTest.addData("i am last");
  print(singletonTest.getFirstItemData());
  print(singletonTest.getLastItemData());
  print(singletonTest.hashCode);

  SingletonStorage singletonTest2 = SingletonStorage();
  print(singletonTest2.getFirstItemData());
  print(singletonTest2.getLastItemData());
  singletonTest2.addData("The end");
  print(singletonTest.hashCode);

  SingletonStorage singletonTest3 = SingletonStorage();
  print(singletonTest2.getFirstItemData());
  print(singletonTest3.getLastItemData());
  print(singletonTest.hashCode);

  print('*********************Static Field******************************');
  //Testing singleton static field
  SingletonStorageSF singletonTestFS = SingletonStorageSF.instance;
  singletonTestFS.addData("i am first");
  singletonTestFS.addData("i am last");
  print(singletonTestFS.getFirstItemData());
  print(singletonTestFS.getLastItemData());
  print(singletonTestFS.hashCode);

  SingletonStorageSF singletonTestFS2 = SingletonStorageSF.instance;
  print(singletonTestFS2.getFirstItemData());
  print(singletonTestFS2.getLastItemData());
  singletonTestFS2.addData("The end");
  print(singletonTestFS2.hashCode);

  SingletonStorageSF singletonTestFS3 = SingletonStorageSF.instance;
  print(singletonTestFS3.getFirstItemData());
  print(singletonTestFS3.getLastItemData());
  print(singletonTestFS3.hashCode);
}
