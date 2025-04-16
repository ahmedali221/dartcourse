// Car class implementation
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

// Animal class hierarchy
class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set deposit(double value) {
    if (value > 0) {
      _balance += value;
    } else {
      print("Error, invalid deposit amount");
    }
  }
}
