import 'dart:math';

void main() {
// Arithmetic operations
/*Now print the value of 1 over the square root of 2 in Dart.
  Confirm that it equals the sine of 45°. */
  print(sin(45 * pi / 180)); //0.7071067811865476
  print(1 / sqrt(2)); //0.7071067811865475

// Naming data1
/*Declare a constant of type int called myAge and set it to
  your age */
  const myAge = 27;
  print(myAge); //27

// Naming data2
/*Declare a variable of type double called averageAge.
  Initially, set the variable to your own age. Then, set it to
  the average of your age and your best friend’s age. */
  double averageAge = 27;
  averageAge = (27 + 25) / 2;
  print(averageAge); //26.0

// Naming data3
/*Create a constant called testNumber and initialize it
  with whatever integer you’d like. Next, create another
  constant called evenOdd and set it equal to testNumber
  modulo 2. Now change testNumber to various numbers.
  What do you notice about evenOdd? */
  const testNumber = 35;
  const evenOdd = testNumber % 2;
  print(evenOdd); //1
}
