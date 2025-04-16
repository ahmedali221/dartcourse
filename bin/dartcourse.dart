import 'package:dartcourse/day1.dart' as day1;
import 'package:dartcourse/day2.dart' as day2;
import 'package:dartcourse/day3.dart' as day3;
import 'dart:io';

import 'package:dartcourse/day3.dart';

void main(List<String> arguments) {
  print('Select Day:');
  print('1. Day 1 - Dart Basics');
  print('2. Day 2 - Practice Tasks');
  print('3. Day 3 - OOP Tasks');

  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      day1.runDartBasics();
      break;
    case '2':
      runDay2Tasks();
      break;
    case '3':
      runDay3Tasks();
      break;
    default:
      print('Invalid choice');
  }
}

void runDay2Tasks() {
  print('\nDay 2 Tasks:');
  print('1. BMI Calculator');
  print('2. Student Grades Average');
  print('3. ATM Simulation');
  print('4. Palindrome Checker');
  print('5. Shopping Cart');

  String? taskChoice = stdin.readLineSync();

  switch (taskChoice) {
    case '1':
      day2.BMI_Calculator();
      break;
    case '2':
      day2.averageCalculator();
      break;
    case '3':
      day2.Simple_ATM_Simulation();
      break;
    case '4':
      print('Enter a word:');
      String word = stdin.readLineSync() ?? '';
      print('Is "$word" a palindrome? ${day2.isPalindrome(word)}');
      break;
    case '5':
      day2.ShoppingCart();
      break;
    default:
      print('Invalid choice');
  }
}

void runDay3Tasks() {
  print('\nDay 3 Tasks:');
  print('Task 1');
  var car1 = Car('Tesla', 'Model S', 2022);
  var car2 = Car('Toyota', 'Camry', 2023);

  car1.displayInfo();
  car2.displayInfo();

  print("\n-----------------------------------------------------------");
  print('Task 2');
  var dog = Dog();
  var cat = Cat();

  dog.makeSound();
  cat.makeSound();

  print("\n-----------------------------------------------------------");
  print('Task 3');
  var account = BankAccount();

  try {
    account.deposit = 500;
    print('Current balance: \$${account.balance}');

    account.deposit = 300;
    print('Current balance: \$${account.balance}');

    account.deposit = -100;
  } catch (e) {
    print('Error: $e');
  }
}
