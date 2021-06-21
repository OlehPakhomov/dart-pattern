class User {
  String _login;
  String _email;
  String _pass;

  get login => this._login;
  get email => this._email;
  get pass => this._pass;

  User(this._login, this._email, this._pass);
}
