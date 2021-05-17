class Saving {
  double _saving;

  Saving(this._saving);

  void save(double uahMoneySave) => this._saving += uahMoneySave;

  bool spend(double uahMoneySpend) {
    if (uahMoneySpend <= this._saving) {
      this._saving -= uahMoneySpend;
      return true;
    } else
      return false;
  }

  double chek() => _saving;
}
