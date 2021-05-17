import 'income.dart';
import 'income_adapter.dart';
import 'saving.dart';
import 'usd_income.dart';

void main() {
  Income income = Income(5000);
  UsdIncome usdIncome = UsdIncome(200);
  Saving saving = Saving(0);
  IncomeUsdAdapter adapter = IncomeUsdAdapter(200);

  print("Income is: ${income.chek()} UAH");
  print("USD Income is: ${usdIncome.chek()} USD");
  print("Saving is ${saving.chek()} UAH");

  //Откладываем 2000
  saving.save(income.saveMoney(2000));

  //Откладываем 100$
  //Ошибочный рассчет так как разные валюти
  //saving.save(usdIncome.saveMoney(100));

  saving.save(adapter.saveMoney(100));

  //Проверяем
  print("**************************************");
  print("Income is: ${income.chek()} UAH");
  //print("USD Income is: ${usdIncome.chek()} USD");
  print("USD Income is: ${adapter.chek()} USD");
  print("Saving is ${saving.chek()} UAH");
}
