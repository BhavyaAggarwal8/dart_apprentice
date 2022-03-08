void main() {
  /// classBasic Mini-exercise
  final pwd = Password();
  print(pwd);
  pwd.value = 'password@123';
  print(pwd.isValid());

  /// constructors mini-exercise
  final pwd1 = Password1(4);
  print(pwd1.value);
  print(pwd1.number);
}

/// classBasic Mini-exercise
/*1.Create a class called Password and give it a string
property called value.
2. Override the toString method of Password so that it
prints value.
3. Add a method to Password called isValid that returns
true only if the length of value is greater than 8. */
class Password {
  String value = ''; // mini-ex 1

  bool isValid() {
    return value.length > 8;
  } //mini-ex 2

  @override
  String toString() {
    return 'value';
  } // mini-ex 3
}

/// constructors mini-exercise
/*Given the following class:
class Password1 {
String value = '';
}
1. Make value a final variable, but not private.
2. Add a const constructor as the only way to initialize a
Password object. */
class Password1 {
  final String value = '';
  final int number;
  const Password1(this.number);
}
