void main() {
  final pwd = Password();
  print(pwd);
  pwd.value = 'password@123';
  print(pwd.isValid());
}

/* classBasic Mini-exercise
1.Create a class called Password and give it a string
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
