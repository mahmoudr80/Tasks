import 'dart:collection';
import 'dart:ffi';
import 'MobileClass.dart'; // problem 1
import 'BankAccount.dart';

void main() {
  Mobileclass mobile = Mobileclass(name: "Samsung A24", col: enColor.blue);
  mobile.price = 10000;
  mobile.display();

  Mobileclass mobile2 = Mobileclass.FullParams(
    name: "Iphone 17",
    color: enColor.black,
    price: 100000,
  );

  mobile2.display();

  //          problem  2

  Bankaccount account = Bankaccount();
  account.deposite(600)
      ? print("deposite Succeded, Current Balance : ${account.balance}")
      : print("deposite Failed, Current Balance : ${account.balance}");
  account.deposite(-10)
      ? print("deposite Succeded, Current Balance : ${account.balance}")
      : print("deposite Failed, Current Balance : ${account.balance}");
  account.withdraw(-10)
      ? print("withdraw Succeded, Current Balance : ${account.balance}")
      : print("withdraw Failed, Current Balance : ${account.balance}");
  account.withdraw(700)
      ? print("withdraw Succeded, Current Balance : ${account.balance}")
      : print("withdraw Failed, Current Balance : ${account.balance}");
  account.withdraw(100)
      ? print("withdraw Succeded, Current Balance : ${account.balance}")
      : print("withdraw Failed, Current Balance : ${account.balance}");
}
