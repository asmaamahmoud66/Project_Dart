import 'user.dart';

abstract class Transaction {
  void execute(User user);
}

class WithdrawTransaction extends Transaction {
  double amount;

  WithdrawTransaction(this.amount);

  @override
  void execute(User user) {
    user.withdraw(amount);
  }
}

class DepositTransaction extends Transaction {
  double amount;

  DepositTransaction(this.amount);

  @override
  void execute(User user) {
    user.deposit(amount);
  }
}

class CheckBalanceTransaction extends Transaction {
  @override
  void execute(User user) {
    user.showBalance();
  }
}
