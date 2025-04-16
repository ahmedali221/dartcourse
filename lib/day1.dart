import 'dart:io';

void runDartBasics() {
  print('\nDart Basics Examples:');
  print('1. Data Types');
  print('2. Variables');
  print('3. Collections');
  print('4. Operators');
  print('5. Control Flow');

  print('\nEnter your choice (1-5):');
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      demonstrateDataTypes();
      break;
    case '2':
      demonstrateVariables();
      break;
    case '3':
      demonstrateCollections();
      break;
    case '4':
      demonstrateOperators();
      break;
    case '5':
      demonstrateControlFlow();
      break;
    default:
      print('Invalid choice');
  }
}

void demonstrateDataTypes() {
  print('\nData Types in Dart:');

  // Object example
  Object x = true;
  print('Object can hold any type: $x');

  // Numbers
  num y = 123;
  num c = 1.23;
  print('num can hold both int and double: $y, $c');

  // Integer and Double
  int intNumber = 123;
  double doubleNumber = 1.23;
  print('int: $intNumber, double: $doubleNumber');

  // String
  String name = "Ahmed";
  print('String: $name (Type: ${name.runtimeType})');

  // Boolean
  bool isLogin = true;
  print('Boolean: $isLogin');
}

void demonstrateVariables() {
  print('\nVariable Types in Dart:');

  // var example
  var x = 12.3;
  print('var type is fixed: $x (${x.runtimeType})');

  // dynamic example
  dynamic y = "Hello";
  y = 123;
  print('dynamic can change type: $y');

  // final example
  final time = DateTime.now();
  print('final (runtime constant): $time');

  // const example
  const pi = 3.14159;
  print('const (compile-time constant): $pi');
}

void demonstrateCollections() {
  print('\nCollections in Dart:');

  // List
  List<dynamic> list = ["Ahmed", 1, "Ali"];
  print('List: $list');

  // Map
  Map<String, int> grades = {
    "Ahmed": 90,
    "Ali": 85,
    "Omar": 95,
  };
  print('Map: $grades');

  // Set
  Set<String> uniqueNames = {"Ahmed", "Ali", "Omar", "Ahmed"};
  print('Set (unique values): $uniqueNames');
}

void demonstrateOperators() {
  print('\nOperators in Dart:');

  int a = 10, b = 20;

  print('Arithmetic: ${a + b}, ${a - b}, ${a * b}, ${a / b}');
  print('Comparison: ${a > b}, ${a < b}, ${a == b}');
  print('Logical: ${a > 5 && b < 30}, ${a > b || a < b}');
  print('Type test: ${a is int}, ${a is! bool}');
}

void demonstrateControlFlow() {
  print('\nControl Flow in Dart:');

  // if-else example
  int score = 85;
  if (score >= 80) {
    print('Grade: A');
  } else if (score >= 60) {
    print('Grade: B');
  } else {
    print('Grade: F');
  }

  // switch example
  String day = "Monday";
  switch (day) {
    case "Monday":
      print('Start of the week');
      break;
    case "Friday":
      print('End of the week');
      break;
    default:
      print('Mid week');
      break;
  }

  // loop examples
  print('\nLoop from 1 to 3:');
  for (int i = 1; i <= 3; i++) {
    print(i);
  }
}
