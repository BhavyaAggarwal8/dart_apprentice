void main() {
  example1();
  example2();
  example3();
  example4();
  example5();
}

example1() {
  String fullName(String first, String last, [String? title]) {
    if (title != null) {
      return '$title $first $last';
    } else {
      return '$first $last';
    }
  }

  print(fullName('bhavya', 'aggarwal', 'Mr'));
  print(fullName('bhavya', 'aggarwal'));
}

example2() {
  bool withinTolerance({required int value, int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  print(withinTolerance(value: 7, min: 5));
}

example3() {
  Function multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(5, 6));
}

example4() {
  Function applyMultiplier(num multiplier) => (num value) => value * multiplier;

  final triple = applyMultiplier(3);
  print(triple(9));
}

example5() {
  const numbers = [2, 3, 4];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });
}
