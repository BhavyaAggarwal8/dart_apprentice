void main() {
  functionBasicsMiniExercise1();
  functionBasicsMiniExercise2();
  functionBasicsMiniExercise3();

  anonymousFunctionsMiniExercise1();
  anonymousFunctionsMiniExercise2();

  arrowFunctionsMiniExercise1();
}

/*Mini-exercise 1
Write a function named youAreWonderful, with a String
parameter called name. It should return a string using
name, and say something like “You’re wonderful, Bob.”*/
void functionBasicsMiniExercise1() {
  youAreWonderful(String name) {
    return "You're wonderful, $name.";
  }

  print(youAreWonderful('Bob'));
}

/* Mini-exercise 2
Add another int parameter to that function called
numberPeople so that the function returns something
like “You’re wonderful, Bob. 10 people think so.”*/
void functionBasicsMiniExercise2() {
  youAreWonderful(String name, int numberPeople) {
    return "You're wonderful, $name. $numberPeople people think so.";
  }

  print(youAreWonderful('Bob', 10));
}

/* Mini-exercise 3
Make both inputs named parameters. Make name
required and set numberPeople to have a default of 30.*/
void functionBasicsMiniExercise3() {
  youAreWonderful({required String name, int numberPeople = 30}) {
    return "You're wonderful, $name. $numberPeople people think so.";
  }

  print(youAreWonderful(name: 'Mary'));
}

/* Anonymous functions: Mini-exercise 1
Change the youAreWonderful function in the first miniexercise
of this chapter into an anonymous function.
Assign it to a variable called wonderful.*/
void anonymousFunctionsMiniExercise1() {
  final wonderful = (String name) {
    return "You're wonderful, $name.";
  };

  print(wonderful('Bob'));
}

/*Mini-exercise 2
Using forEach, print a message telling the people in the
following list that they’re wonderful.
const people = ['Chris', 'Tiffani', 'Pablo'];*/
void anonymousFunctionsMiniExercise2() {
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) {
    print("You're wonderful, $person.");
  });
}

/* Arrow functions: Mini-exercise 1
Change the forEach loop in the previous “You’re wonderful”
mini-exercise to use arrow syntax.*/
void arrowFunctionsMiniExercise1() {
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) => print("You're wonderful, $person."));
}
