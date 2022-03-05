void main() {
// Challenge 1: Find the error
  /*What’s wrong with the following code?
    const firstName = 'Bob';
    if (firstName == 'Bob') {
    const lastName = 'Smith';
    } else if (firstName == 'Ray') {
    const lastName = 'Wenderlich';
    }
    final fullName = firstName + ' ' + lastName; */
  const firstName = 'Bob';
  var lastName = '';
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print(fullName);

// Challenge 2: Boolean challenge
  /*In each of the following statements, what is the value of the
Boolean expression?
   true && true
   false || false
   (true && 1 != 2) || (4 > 3 && 100 < 1)
   ((10 / 2) > 3) && ((10 % 2) == 0) */
  print(true && true); // true
  print(false || false); // false
  print((true && 1 != 2) || (4 > 3 && 100 < 1)); // true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); // true

// Challenge 3: Next power of two
  /*Given a number, determine the next power of two above or
   equal to that number. Powers of two are the numbers in the
   sequence of 2¹, 2², 2³, and so on. You may also recognize the
   series as 1, 2, 4, 8, 16, 32, 64... */
  const number = 400;
  var nxt = 1;
  var power = 0;
  while (nxt < number) {
    nxt = nxt * 2;
    power++;
  }
  print('Next power of 2 >= $number is $nxt which is power $power');

// Challenge 4: Fibonacci
/*Calculate the nth Fibonacci number. The Fibonacci sequence
  starts with 1, then 1 again, and then all subsequent numbers
  in the sequence are simply the previous two values in the
  sequence added together (1, 1, 2, 3, 5, 8...). */
  const n = 10;
  var current = 1;
  var previous = 1;
  var c = 2;
  while (c < n) {
    final next = current + previous;
    previous = current;
    current = next;
    c++;
  }
  print('Fibonacci number $n is $current');
  // Fibonacci number 10 is 55

// Challenge 5: How many times?
  /*In the following for loop, what will be the value of sum, and
   how many iterations will happen?
   var sum = 0;
   for (var i = 0; i <= 5; i++) {
   sum += i;
   } */
  var sum = 0;
  var count = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
    count++;
  }
  print('sum is $sum after $count iterations.');

// Challenge 6: The final countdown
  /* Print a countdown from 10 to 0.*/

  for (var i = 10; i >= 0; i--) {
    print(i);
  }

// Challenge 7: Print a sequence
  /* Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.*/
  for (var i = 0; i <= 10; i++) {
    print(i / 10);
  }
}
