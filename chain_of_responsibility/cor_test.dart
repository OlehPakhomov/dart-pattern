import 'check_interface.dart';
import 'user.dart';
import 'user_db.dart';

void main() {
  UserDB userDb = UserDB();
  User user = User("login", "email@mail.com", "12335gft");
  CheckUser checkUser = CheckUser(user);
  if (checkUser.check() == true) userDb.addUser(user);
  print("User DB count: ${userDb.getCount()}");
}
