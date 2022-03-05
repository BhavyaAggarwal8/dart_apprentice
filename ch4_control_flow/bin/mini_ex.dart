import 'dart:math';

void main() {
  //boolean operators
  /*1. Create a constant called myAge and set it to your age.
      Then, create a constant named isTeenager that uses
      Boolean logic to determine if the age denotes someone
      in the age range of 13 to 19. */
  const myAge = 27;
  const isTeenager = (myAge >= 13) && (myAge <= 19);
  print(isTeenager); //false

  /*2. Create another constant named maryAge and set it to 30.
       Then, create a constant named bothTeenagers that uses
       Boolean logic to determine if both you and Mary are
       teenagers. */
  const maryAge = 30;
  const bothTeenagers =
      (maryAge >= 13 && maryAge <= 19) && (myAge >= 13 && myAge <= 19);
  print(bothTeenagers); // false

  /*3. Create a String constant named reader and set it to
       your name. Create another String constant named ray
       and set it to 'Ray Wenderlich'. Create a Boolean
       constant named rayIsReader that uses string equality
       to determine if reader and ray are equal. */
  const reader = 'Bhavya Aggarwal';
  const ray = 'Ray wenderlich';
  const raIsReader = (reader == ray);
  print(raIsReader); //false
//if statements
/*1. Create a constant named myAge and initialize it with
     your age. Write an if statement to print out “Teenager”
     if your age is between 13 and 19, and “Not a teenager” if
     your age is not between 13 and 19. */
  if (isTeenager) {
    print("Teenager");
  } else {
    print('Not a Teenager');
  } // Not a Teenager

/*2. Use a ternary conditional operator to replace the elseif
     statement that you used above. Set the result to a
     variable named answer */
  const result = isTeenager ? 'Teenager' : 'Not a Teenager';
  print(result); // Not a Teenager

//switch and enum
/*1. Make an enum called AudioState and give it values to
     represent playing, paused and stopped states. */
  // outside main

/*2. Create a constant called audioState and give it an
     AudioState value. Write a switch statement that prints
     a message based on the value. */
  const audioState = AudioState.paused;
  switch (audioState) {
    case AudioState.playing:
      print('playing');
      break;
    case AudioState.paused:
      print('paused');
      break;
    case AudioState.stopped:
      print('stopped');
      break;
    // paused
  }
//loops
/* Create a variable named counter and set it equal to 0.
   Create a while loop with the condition counter < 10.
   he loop body should print out “counter is X” (where X
   is replaced with the value of counter) and then
   increment counter by 1.*/
  var counter = 0;
  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }

/*2. Write a for loop starting at 1 and ending with 10
     inclusive. Print the square of each number. */
  for (var i = 1; i <= 10; i++) {
    var square = i * i;
    print('square root of $i is: $square');
  }

/*3. Write a for-in loop to iterate over the following
     collection of numbers. Print the square root of each
     number.
     const numbers = [1, 2, 4, 7]; */
  const numbers = [1, 2, 4, 7];
  for (var number in numbers) {
    print(sqrt(number));
  }

/*Repeat Mini-exercise 3 using a forEach loop */
  numbers.forEach((element) => print(sqrt(element)));
}

enum AudioState {
  playing,
  paused,
  stopped,
}
