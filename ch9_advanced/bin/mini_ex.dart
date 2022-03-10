void main() {
  //inheritanceMiniExercise1();
  //inheritanceMiniExercise2();
  inheritanceMiniExercise3();

  // interfacesMiniExercises();

  //mixinsMiniExercise();
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
