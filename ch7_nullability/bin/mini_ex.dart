void main() {
  nullExercise1();
  nullExercise2();
  nullExercise3();
}

/// Mini-exercise 1
/* Create a String? variable called profession, but don’t
give it a value. Then you’ll have profession null. :] */
void nullExercise1() {
  String? profession;
  print(profession);
}

///Mini-exercise 2
/* Give profession a value of “basketball player”. */
void nullExercise2() {
  String? profession;
  profession = 'basketball player';
  print(profession);
}

/// Mini-exercise 3
/*Write the following line and then hover your cursor over
the variable name. What type does Dart infer iLove to
be? 
const iLove = 'Dart';*/
void nullExercise3() {
  const iLove = 'Dart';
  print(iLove.runtimeType);
}
