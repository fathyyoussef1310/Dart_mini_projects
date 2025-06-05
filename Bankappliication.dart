import 'dart:io';
// import 'Client.dart';
class BasicBankAccount {
   // Client client;
  late int accountid;
  ///can't be null ,and id must be different in each one
  late double balance;
  static int idsGen = 1 * 1000;
  BasicBankAccount([this.balance = 0])
  {
    accountid = idsGen++;
  }
  bool withdraw(double money) {
    if (money <= 0)
    {
      print( " You can't do that " );
      return false;
    }
    if(money<=balance)
    {
      balance -= money;
      print("The operation is successfully done");
      return true;
    }else {
      print("You can't do that");
      return false;
    }
  }
  bool deposite(int money)
  {
    if(money<=0)
      {
        print("Please,enter another number");
        return false;
      }else
      {
          balance+=money;
          print(balance);
          return true;
      }
  }
}
void main()
{
  BasicBankAccount aco=BasicBankAccount();
  BasicBankAccount p2=BasicBankAccount();
  aco.withdraw(300);
  print(aco.balance);
  p2.deposite(400);
}