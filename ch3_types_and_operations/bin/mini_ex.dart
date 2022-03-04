void main() {
// Data types
/*Create a constant called age1 and set it equal to 42.
  Create another constant called age2 and set it equal to
  21. Check that the type for both constants has been
  inferred correctly as int by hovering your mouse pointer
  over the variable names in VS Code. */
  const age1 = 42;
  const age2 = 21;

/*Create a constant called averageAge and set it equal to
  the average of age1 and age2 using the operation (age1
  + age2) / 2. Hover your mouse pointer over
  averageAge to check the type. Then check the result of
  averageAge. Why is it a double if the components are
  all int? */
  const averageAge = (age1 + age2) / 2;
  print(averageAge); //31.5
  //averageAge is double due to division operator and type inference

// Strings
/*Create a string constant called firstName and initialize it
  to your first name. Also create a string constant called
  lastName and initialize it to your last name. */
  const firstName = 'Bhavya';
  const lastName = 'Aggarwal';

/*Create a string constant called fullName by adding the
  firstName and lastName constants together, separated
  by a space. */
  const fullName = firstName + ' ' + lastName;
  print(fullName); //Bhavya Aggarwal

/*Using interpolation, create a string constant called
  myDetails that uses the fullName constant to create a
  string introducing yourself. For example, Ray
  Wenderlich’s string would read: Hello, my name is
  Ray Wenderlich. */
  const myDetails = 'Hello, my name is $fullName.';
  print(myDetails); // Hello, my name is Bhavya Aggarwal.
}
