import 'dart:io';

void BMI_Calculator() {
  print('\nBMI Calculator');
  print('Enter weight (kg):');
  double weight = double.parse(stdin.readLineSync() ?? '0');

  print('Enter height (m):');
  double height = double.parse(stdin.readLineSync() ?? '0');

  if (weight < 30 || weight > 200 || height < 1.0 || height > 2.5) {
    print('Invalid input values');
    return;
  }

  double bmi = weight / (height * height);
  print('\nYour BMI is: ${bmi.toStringAsFixed(2)}');

  if (bmi < 18.5) {
    print('Category: Underweight');
  } else if (bmi < 25) {
    print('Category: Normal');
  } else if (bmi < 30) {
    print('Category: Overweight');
  } else {
    print('Category: Obese');
  }
}

void averageCalculator() {
  print('\nStudent Grade Calculator');
  print('Enter number of grades:');
  int count = int.parse(stdin.readLineSync() ?? '0');

  List<int> grades = [];
  for (int i = 0; i < count; i++) {
    print('Enter grade ${i + 1}:');
    int grade = int.parse(stdin.readLineSync() ?? '0');
    if (grade >= 0 && grade <= 100) {
      grades.add(grade);
    } else {
      print('Invalid grade. Please enter a number between 0 and 100');
      i--;
    }
  }

  double average = grades.reduce((a, b) => a + b) / grades.length;
  print('\nAverage grade: ${average.toStringAsFixed(2)}');
  print(average >= 60 ? 'Passed' : 'Failed');
}

void Simple_ATM_Simulation() {
  double balance = 1000.0;

  print('\nATM Simulation');
  print('1. Check Balance');
  print('2. Deposit');
  print('3. Withdraw');

  int choice = int.parse(stdin.readLineSync() ?? '0');

  switch (choice) {
    case 1:
      print('Current balance: \$${balance.toStringAsFixed(2)}');
      break;
    case 2:
      print('Enter deposit amount:');
      double amount = double.parse(stdin.readLineSync() ?? '0');
      if (amount > 0) {
        balance += amount;
        print(
            'Deposited successfully. New balance: \$${balance.toStringAsFixed(2)}');
      } else {
        print('Invalid amount');
      }
      break;
    case 3:
      print('Enter withdrawal amount:');
      double amount = double.parse(stdin.readLineSync() ?? '0');
      if (amount > 0 && amount <= balance) {
        balance -= amount;
        print(
            'Withdrawal successful. New balance: \$${balance.toStringAsFixed(2)}');
      } else {
        print('Invalid amount or insufficient funds');
      }
      break;
    default:
      print('Invalid choice');
  }
}

bool isPalindrome(String word) {
  String cleanWord = word.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  return cleanWord == cleanWord.split('').reversed.join('');
}

void ShoppingCart() {
  Map<String, double> cart = {};

  print('\nShopping Cart');
  print('Enter number of items:');
  int itemCount = int.parse(stdin.readLineSync() ?? '0');

  for (int i = 0; i < itemCount; i++) {
    print('Enter item ${i + 1} name:');
    String itemName = stdin.readLineSync() ?? '';

    print('Enter price for $itemName:');
    double price = double.parse(stdin.readLineSync() ?? '0');

    if (price > 0) {
      cart[itemName] = price;
    } else {
      print('Invalid price. Item not added.');
      i--;
    }
  }

  double total = cart.values.fold(0, (sum, price) => sum + price);
  print('\nCart Summary:');
  cart.forEach((item, price) => print('$item: \$${price.toStringAsFixed(2)}'));
  print('Total: \$${total.toStringAsFixed(2)}');

  print('\nEnter discount (0-1, e.g., 0.1 for 10%):');
  double discount = double.parse(stdin.readLineSync() ?? '0');

  if (discount > 0 && discount < 1) {
    double discountedTotal = total * (1 - discount);
    print(
        'Total after ${(discount * 100).toStringAsFixed(0)}% discount: \$${discountedTotal.toStringAsFixed(2)}');
  }
}
