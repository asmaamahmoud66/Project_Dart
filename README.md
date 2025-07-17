
# 🏦 Simple ATM System in Dart

This project demonstrates a basic ATM system in Dart, while applying core Object-Oriented Programming (OOP) concepts such as **Class**, **Object**, **Constructor**, **Method**, **Property**, **Encapsulation**, **Inheritance**, **Polymorphism**, **Getter/Setter**, and **Static Members**.

---

## ✅ OOP Concepts Used

| Concept         | How It Was Used                                                                                  | Code Reference Example                                                  |
|------------------|--------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| **Class**        | Classes are used to define blueprints like `User`, `ATM`, `Transaction`, etc.                    | `class ATM {`, `class User {`, `class WithdrawTransaction extends Transaction {` |
| **Object**       | Instances like `ATM atm = ATM();` and `User user = User(...)` create usable objects from classes | `ATM atm = ATM();` in `main.dart`                                       |
| **Constructor**  | Constructors initialize the class with given parameters                                           | `User(this._cardNumber, this._password, this._balance);`                |
| **Method**       | Class functions like `withdraw()`, `deposit()` and `execute()` are used                          | `void withdraw(double amount) { ... }` in `user.dart`                   |
| **Property**     | Class-level variables like `_balance`, `_password`                                                | `double _balance;` in `user.dart`                                       |
| **Encapsulation**| Private variables (`_balance`) and controlled access via methods                                 | `_balance` is private + `get balance => _balance`                       |
| **Inheritance**  | `WithdrawTransaction`, `DepositTransaction`, `CheckBalanceTransaction` inherit from `Transaction`| `class WithdrawTransaction extends Transaction`                         |
| **Polymorphism** | `Transaction` is abstract; each subclass overrides `execute()`                                   | `transaction.execute(currentUser!)` runs correct method at runtime      |
| **Getter/Setter**| Used to access private values like `_balance` via `get balance`                                  | `double get balance => _balance;`                                       |
| **Static Members**| Shared across instances, e.g., bank name in `ATM`                                                | `static String bankName = "Bank 404";`                                  |

---

## 📁 Project Structure

```
lib/
├── atm.dart
├── main.dart
├── user.dart
├── transaction.dart
```

---

## 🧠 How to Run

1. Make sure Dart is installed.
2. Run the project using:
```bash
dart run main.dart
```

---

## 🚀 Features

- Card authentication
- Language selection
- Withdraw, deposit, and check balance
- Transactions are handled via polymorphic classes

---

## 💡 Educational Purpose

This project is designed for beginners to understand **object-oriented programming in Dart** through a simple real-world simulation.
