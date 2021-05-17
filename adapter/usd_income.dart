import 'income.dart';

class UsdIncome {
  double _income;

  UsdIncome(this._income);

  void getIncome(double incomeUsd) => this._income += incomeUsd;

  double saveMoney(double ammountMoneyUsd) {
    if (ammountMoneyUsd <= this._income) {
      this._income -= ammountMoneyUsd;
      return ammountMoneyUsd;
    } else
      return 0;
  }

  double chek() => _income;
}
