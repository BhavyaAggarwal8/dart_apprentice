void main() {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jane.fullName);
  print(jon.fullName);
  jane.grades.add(Grade.B);
  print(jane.grades);
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  print(jessie);
  print(SchoolBandMember.minimumPracticeTime);
  print(marty);
  final students = [
    jane,
    jessie,
    marty
  ]; // type student class as common ancestor

  print(jessie is StudentAthlete);
  print(jessie is! StudentAthlete);
}

enum Grade { A, B, C, D, F }

class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';
  @override
  String toString() => fullName;
}

/// super is forwarding the parameters to parent class constructors
class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);
  var grades = <Grade>[];
  @override
  String get fullName => '$surname $givenName';
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}
