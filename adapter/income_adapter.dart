import 'income.dart';
import 'usd_income.dart';

class IncomeUsdAdapter extends UsdIncome {
  final double _usdRate = 27.5;

  IncomeUsdAdapter(double income) : super(income);

  @override
  double saveMoney(double ammountMoneyUsd) {
    return super.saveMoney(ammountMoneyUsd) * _usdRate;
  }
}
