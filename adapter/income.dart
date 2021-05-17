class Income {
  double _income;

  Income(this._income);

  void getIncome(double incomeUah) => _income += incomeUah;

  double saveMoney(double ammountMoney) {
    if (ammountMoney <= _income) {
      _income -= ammountMoney;
      return ammountMoney;
    }
    return 0;
  }

  double chek() => _income;
}
