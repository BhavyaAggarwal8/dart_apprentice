void main() {
  // miniExercise1();
  //miniExercise2();
  //miniExercise3();
  //mapsMiniExercise1();
  //mapsMiniExercise2();
  //mapsMiniExercise3();
  //hodMiniExercise1();
  hodMiniExercise2();
}

/// Lists mini-exercise 1
/*Create an empty list of type String. Name it months.
Use the add method to add the names of the twelve
months. */
miniExercise1() {
  List<String> months = [];
  months.add('january');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);
}

/// Lists mini exercise 2
/*Make an immutable list with the same elements as in
Mini-exercise 1. */
miniExercise2() {
  const months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  print(months);
}

/// Lists mini exercise 3
/*Use collection for to create a new list with the month
names in all uppercase */
miniExercise3() {
  const months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  print(months);
  final monthsInUpperCase = [for (var toUpper in months) toUpper.toUpperCase()];
  print(monthsInUpperCase);
}

/// Maps: Mini-exercise 1
/* Create a map with the following keys: name, profession,
country and city. For the values, add your own
information.*/
mapsMiniExercise1() {
  final map = {
    'name': 'bhavya',
    'profession': 'software engineer',
    'country': 'india',
    'city': 'faridabad',
  };
  print(map);
}

/// Maps: Mini-exercise 2
/* You suddenly decide to move to Toronto, Canada.
Programmatically update the values for country and
city.*/
mapsMiniExercise2() {
  final map = {
    'name': 'bhavya',
    'profession': 'software engineer',
    'country': 'india',
    'city': 'faridabad',
  };
  map['country'] = 'Canada';
  map['city'] = 'Toronto';
  print(map);
}

/// Maps: Mini-exercise 3
/*Iterate over the map and print all the values */
mapsMiniExercise3() {
  final map = {
    'name': 'bhavya',
    'profession': 'software engineer',
    'country': 'india',
    'city': 'faridabad',
  };
  map.forEach((key, value) => print('$key->$value'));
}

/// Higher order methods: Mini-exercise 1
/*Given the following exam scores:
final scores = [89, 77, 46, 93, 82, 67, 32, 88];
1. Use sort to find the highest and lowest grades */
hodMiniExercise1() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores.first);
  print(scores.last);
}

/// Higher order methods: Mini-exercise 2
/* 2. Use where to find all the B grades, that is, all the scores
between 80 and 90*/
hodMiniExercise2() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  final bGrades = scores.where((score) => (score >= 80 && score < 90));
  print(bGrades);
}
