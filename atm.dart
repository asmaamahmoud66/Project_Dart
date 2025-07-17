import 'dart:io';
import 'user.dart';
import 'transaction.dart';

class ATM {
  static String bankName = "Bank 404";
  User? currentUser;

  void start() {
    print("🏦 Welcome to $bankName ATM");
    _insertCard();
  }

  void _insertCard() {
    stdout.write("💳 Enter your card number: ");
    String card = stdin.readLineSync()!;

    stdout.write("🌐 Choose language (en/ar): ");
    String lang = stdin.readLineSync()!;

    stdout.write("🔒 Enter your password: ");
    String pass = stdin.readLineSync()!;

    // هنا يمكن توسيع النظام لاحقًا لقراءة بيانات من قاعدة بيانات
    User user = User("123456", "0000", 10000);

    if (card == user.cardNumber && user.validatePassword(pass)) {
      currentUser = user;
      print("✅ Login successful.");
      _showMenu();
    } else {
      print("❌ Invalid card number or password.");
    }
  }

  void _showMenu() {
    while (true) {
      print("\n📋 Choose operation:");
      print("1. Withdraw");
      print("2. Deposit");
      print("3. Check Balance");
      print("4. Exit");
      stdout.write("Your choice: ");
      String choice = stdin.readLineSync()!;

      Transaction? transaction;

      switch (choice) {
        case '1':
          stdout.write("Enter amount to withdraw: ");
          double amount = double.parse(stdin.readLineSync()!);
          transaction = WithdrawTransaction(amount);
          break;
        case '2':
          stdout.write("Enter amount to deposit: ");
          double amount = double.parse(stdin.readLineSync()!);
          transaction = DepositTransaction(amount);
          break;
        case '3':
          transaction = CheckBalanceTransaction();
          break;
        case '4':
          print("Thank you for using $bankName ATM.");
          return;
        default:
          print("Invalid choice. Try again.");
      }

      if (transaction != null && currentUser != null) {
        transaction.execute(currentUser!); // Polymorphism هنا
      }
    }
  }
}
