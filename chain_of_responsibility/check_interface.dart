import 'user.dart';

abstract class CheckUserData {
  bool check();
}

class CheckUser implements CheckUserData {
  User _user;
  CheckUserData _checkEmail;
  CheckUser(this._user);
  bool check() {
    if (RegExp(r"^[a-zA-Z]").hasMatch(_user.login) &&
        _user.login.toString().length < 25) {
      print("User login - OK");
      _checkEmail = CheckEmail(_user);
      if (_checkEmail.check() == true) return true;
    } else {
      print("User login - ERROR!");
      return false;
    }
  }
}

class CheckEmail implements CheckUserData {
  User _user;
  CheckUserData _checkPass;
  CheckEmail(this._user);
  bool check() {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_user.email)) {
      print("User e-mail - OK");
      _checkPass = CheckPass(_user);
      if (_checkPass.check() == true) {
        return true;
      }
    } else
      print("User e-mail - ERROR!");
    return false;
  }
}

class CheckPass implements CheckUserData {
  User _user;
  CheckPass(this._user);
  bool check() {
    if (_user.pass.toString().length < 12) {
      print("User pass - OK");
      return true;
    } else {
      print("User pass - ERROR!");
      return false;
    }
  }
}
