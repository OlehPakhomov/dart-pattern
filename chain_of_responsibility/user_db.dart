import 'user.dart';

class UserDB {
  List<User> _userDB;

  UserDB() {
    _userDB = [];
  }

  addUser(User user) {
    _userDB.add(user);
  }

  int getCount() {
    return _userDB.length;
  }
}
