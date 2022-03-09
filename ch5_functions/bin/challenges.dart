import 'dart:math';

void main() {
  challenge1(21);
  challenge2();
  challenge3();
}

/* Challenge 1: Prime time
    Write a function that checks if a number is prime.*/
bool isPrime(int number) {
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void challenge1(int number) {
  print(isPrime(number));
  // print(isPrime(31));
}

/*Challenge 2: Can you repeat that?
  Write a function named repeatTask that looks like this:
    int repeatTask(int times, int input, Function task)
 It repeats a given task on input for times number of times.
 Pass an anonymous function to repeatTask to square the input
 of 2 four times. Confirm that you get the result 65536, since
 2 squared is 4, 4 squared is 16,16 squared is 256, and256 squared is 65536.*/
void challenge2() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(4, 2, (num input) {
    return input * input;
  });

  print(result);
}

/*Challenge 3: Darts and arrows
Update Challenge 2 to use arrow syntax.*/
void challenge3() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(4, 2, (num input) => input * input);

  print(result);
}
