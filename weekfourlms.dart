import 'dart:io';

// An object-oriented model that uses classes and inheritance
class Animal {
  String name;

  Animal(this.name);

  void sound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void sound() {
    print('Woof!');
  }
}

// A class that implements an interface
abstract class Printable {
  void printInfo();
}

class Book implements Printable {
  String title;

  Book(this.title);

  @override
  void printInfo() {
    print('Book: $title');
  }
}

// A class that overrides an inherited method
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void sound() {
    print('Meow!');
  }
}

// An instance of a class that is initialized with data from a file
class Person {
  String name;

  Person(this.name);
}

// A method that demonstrates the use of a loop
void printNumbers() {
  for (int i = 1; i <= 5; i++) {
    print('Number: $i');
  }
}

void main() {
  // An instance of a class that is initialized with data from a file
  final file = File('data.txt');
  final lines = file.readAsLinesSync();
  final person = Person(lines[0]);
  print('Person Name: ${person.name}');

  // A method that demonstrates the use of a loop
  printNumbers();

  // Creating instances of classes and demonstrating inheritance and method overriding
  final dog = Dog('Buddy');
  final cat = Cat('Whiskers');

  dog.sound(); // Outputs: Woof!
  cat.sound(); // Outputs: Meow!

  // Creating an instance of a class that implements an interface
  final book = Book('Dart Programming');
  book.printInfo(); // Outputs: Book: Dart Programming
}
