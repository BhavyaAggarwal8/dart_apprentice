void main() {
  //inheritanceMiniExercise1();
  //inheritanceMiniExercise2();
  //inheritanceMiniExercise3();
  //interfaceMiniExercises();
  mixinsMiniExercise();
}

/// inheritance: Mini-exercise 1
/*Create a class named Fruit with a String field named
color and a method named describeColor, which uses
color to print a message. */
inheritanceMiniExercise1() {
  final fruit = Fruit('orange');
  fruit.describeColor();
}

class Fruit {
  Fruit(this.color);
  String color;
  void describeColor() {
    print("fruit's color is $color.");
  }
}

/// inheritance: Mini-exercise 2
/*2. Create a subclass of Fruit named Melon and then create
two Melon subclasses named Watermelon and
Cantaloupe */
inheritanceMiniExercise2() {
  final melon = Melon('green and yellow');
  final watermelon = Watermelon('green');
  final cantaloupe = Cantaloupe('yellow');
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);
}

class Cantaloupe extends Melon {
  Cantaloupe(String color) : super(color);
}

/// inheritance: Mini-exercise 3
/* 3. Override describeColor in the Watermelon class to vary
the output*/
inheritanceMiniExercise3() {
  final fruit = Fruit('yellow');
  final anotherWatermelon = AnotherWatermelon('red and green');
  fruit.describeColor();
  anotherWatermelon.describeColor();
}

class AnotherWatermelon extends Melon {
  AnotherWatermelon(String color) : super(color);
  @override
  void describeColor() {
    print('another watermelon color is $color.');
  }
}

/// Interface Mini-exercices
/*1. Create an interface called Bottle and add a method to it
called open.
2. Create a concrete class called SodaBottle that
implements Bottle and prints “Fizz fizz” when open is
called.
3. Add a factory constructor to Bottle that returns a
SodaBottle instance.
4. Instantiate SodaBottle by using the Bottle factory
constructor and call open on the object */
interfaceMiniExercises() {
  final bottle = Bottle();
  bottle.open();
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  open();
}

class SodaBottle implements Bottle {
  @override
  open() {
    print('Fizz fizz');
  }
}

/// Mixins Mini-exercices
/* 1. Create a class called Calculator with a method called
sum that prints the sum of any two integers you give it.
2. Extract the logic in sum to a mixin called Adder.
3. Use the mixin in Calculator*/
mixinsMiniExercise() {
  final calculator = Calculator();
  calculator.sum(4, 6);
}

/* class Calculator {
   sum(int a, int b) {
     print('The sum is ${a + b}.');
   }
 }*/

class Calculator with Adder {}

mixin Adder {
  sum(int a, int b) {
    print('The sum is ${a + b}.');
  }
}
