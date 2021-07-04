import 'bank_account.dart';

class State {
  BankAccount _account;

  State(this._account);

  void income(double summ) {
    _account.balance += summ;
    print("Current balance after income: ${_account.balance}");
  }

  void debid(double summ) {
    _account.balance -= summ;
    print("Current balance after debit: ${_account.balance}");
  }

  void block() {
    _account.blocked = true;
    _account.chengeState(BlockedState(_account));
    print("Balance is BLOCKED!!!");
  }

  void unblock() {
    _account.blocked = false;
    _account.chengeState(ActiveState(_account));
    print("Balance is UNBLOKED!");
  }

  void close() {
    _account.debitBalance(_account.balance);
    _account.closed = true;
    _account.chengeState(ClosedState(_account));
    print("Balance is CLOSED!!!");
  }

  void restore() {
    _account.blocked = false;
    _account.closed = false;
    _account.chengeState(ActiveState(_account));
    print("Balance is RESTORED!");
  }
}

class ActiveState extends State {
  ActiveState(BankAccount account) : super(account);

  @override
  void unblock() {
    print("Balance is ACTIVE!");
  }

  @override
  void restore() {
    print("Balance is ACTIVE!");
  }
}

class BlockedState extends State {
  BlockedState(BankAccount account) : super(account);

  @override
  void debid(double summ) {
    print("Balance is BLOCKED!!!");
  }

  @override
  void block() {
    print("Balance is BLOCKED!!!");
  }

  @override
  void close() {
    print("Balance is BLOCKED!!!");
  }

  @override
  void restore() {
    print("Balance is BLOCKED!!!");
  }
}

class ClosedState extends State {
  ClosedState(BankAccount account) : super(account);

  @override
  void block() {
    print("Balance is CLOSED!!!");
  }

  @override
  void close() {
    print("Balance is CLOSED!!!");
  }

  @override
  void debid(double summ) {
    print("Balance is CLOSED!!!");
  }

  @override
  void income(double summ) {
    print("Balance is CLOSED!!!");
  }

  @override
  void unblock() {
    print("Balance is CLOSED!!!");
  }
}
