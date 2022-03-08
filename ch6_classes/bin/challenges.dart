void main() {
  /// Challenge 1: Bert and Ernie
  final ernie = Student('Ernie', 'niet', 95);
  final bert = Student('Bert', 'erty', 85);
  print('$ernie');
  print('$bert');

  /// Challenge 2: Spheres
  const sphere = Sphere(radius: 12);
  final volume = sphere.volume;
  final area = sphere.area;
  print('volume: $volume, area: $area');
}

/// Challenge 1: Bert and Ernie
/*Create a Student class with final firstName and lastName
String properties and a variable grade as an int property.
Add a constructor to the class that initializes all the
properties. Add a method to the class that nicely formats a
Student for printing. Use the class to create students bert
and ernie with grades of 95 and 85, respectively */
class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() => '$firstName $lastName: $grade';
}

/// Challenge 2: Spheres
/*Create a Sphere class with a const constructor that takes a
positive length radius as a named parameter. Add getters
for the the volume and surface area but none for the radius.
Don’t use the dart:math package but store your own version
of pi as a static constant. Use your class to find the volume
and surface area of a sphere with a radius of 12. */
class Sphere {
  const Sphere({required int radius})
      : assert(radius > 0),
        _radius = radius;

  final int _radius;
  static const pi = 3.14159265359;
  double get volume => 4 / 3 * pi * _radius * _radius * _radius;
  double get area => 4 * pi * _radius * _radius;
}
