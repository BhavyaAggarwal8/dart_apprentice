import 'dart:math';

void main() {
  challenge1();
  challenge2();
}

/// Challenge 1: Random nothings
/*Write a function that randomly returns 42 or null. Assign
the return value of the function to a variable named result
that will never be null. Give result a default of 0 if the
function returns null. */
void challenge1() {
  int? random() {
    final isTrue = Random().nextBool();
    return (isTrue) ? 42 : null;
  }

  final result = random() ?? 0;
  print(result);
}

/// Challenge 2: Naming customs
/*People around the world have different customs for giving
names to children. It would be difficult to create a data class
to accurately represent them all, but try it like this:
Create a class called Name with givenName and surname
properties.
Some people write their surname last and some write it
first. Add a Boolean property called surnameIsFirst to
keep track of this.
Not everyone in the world has a surname.
Add a toString method that prints the full name. */
void challenge2() {
  final nameFirst = Name(givenName: 'Ray', surname: 'Wenderlich');
  final surNameFirst =
      Name(surname: 'Li', givenName: 'Ming', surnameIsFirst: true);
  final noSurname = Name(givenName: 'Baatar');

  print(nameFirst);
  print(surNameFirst);
  print(noSurname);
}

class Name {
  Name({required this.givenName, this.surname, this.surnameIsFirst = false});

  final String givenName;
  final String? surname;
  final bool surnameIsFirst;

  @override
  String toString() {
    if (surname == null) {
      return givenName;
    }
    if (surnameIsFirst) {
      return '$surname $givenName';
    }
    return '$givenName $surname';
  }
}
