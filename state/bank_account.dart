import 'state.dart';

class BankAccount {
  double _balance;
  bool _closed;
  bool _blocked;
  State _state;

  get balance => _balance;

  set balance(double value) => _balance = value;

  get closed => _closed;

  set closed(value) => _closed = value;

  get blocked => _blocked;

  set blocked(value) => _blocked = value;

  get state => _state;

  void chengeState(State state) => _state = state;

  BankAccount() {
    this._state = ActiveState(this);
    _blocked = false;
    _closed = false;
    _balance = 0;
  }

  void incomeBalance(double summ) => _state.income(summ);

  void debitBalance(double summ) => _state.debid(summ);

  void blockBankAccount() => _state.block();

  void unblockBankAccount() => _state.unblock();

  void closeBankAccount() => _state.close();

  void renewBankAccount() => _state.restore();
}
