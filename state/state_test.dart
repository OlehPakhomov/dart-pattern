import 'bank_account.dart';
import 'state.dart';

void main() {
  BankAccount userBalance = BankAccount();
  State userBalanceState = ActiveState(userBalance);

  userBalance.incomeBalance(120.5);
  userBalance.debitBalance(64.5);
  userBalance.renewBankAccount();
  userBalance.unblockBankAccount();

  print('');

  userBalance.blockBankAccount();
  userBalance.incomeBalance(10);
  userBalance.debitBalance(25);
  userBalance.unblockBankAccount();

  print('');

  userBalance.closeBankAccount();
  userBalance.incomeBalance(25);

  print('');

  userBalance.renewBankAccount();
  userBalance.incomeBalance(100);
}
