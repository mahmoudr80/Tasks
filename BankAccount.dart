class Bankaccount {
  num _balance = 0;

  num get balance {
    return _balance;
  }

  bool deposite(num money) {
    if (money <= 0) return false;
    _balance += money;
    return true;
  }

  bool withdraw(num money) {
    if (money > _balance || money <= 0) return false;
    _balance -= money;
    return true;
  }
}
