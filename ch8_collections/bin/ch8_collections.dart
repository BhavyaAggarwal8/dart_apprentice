void main() {
  //function1();
  //function2();
  //function3();
  //function4();
  //function5();
  //function6();
  //functions7();
  //functions8();
  //function9();
  //function10();
  //function11();
  //function12();
  functions13();
}

///printing list
void function1() {
  List<String> desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pies',
  ];
  print(desserts);
  desserts = ['pizza', 'cola'];
  print(desserts);
}

///accessing elements
void function2() {
  List<String> desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pies',
  ];
  print(desserts[1]);
  final firstElement = desserts[0];
  print(firstElement);
  print(desserts.indexOf('pies'));
}

///assigning, adding, removing to list
void function3() {
  final desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pies',
  ];
  desserts[1] = 'cakes';
  print(desserts);
  desserts.add('brownies');
  print(desserts);
  desserts.remove('cakes');
  print(desserts);
  desserts.remove(desserts[0]);
  print(desserts);
}

/// mutable and immutable lists
///  use const keyword to make list immutable

void function4() {
  final desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pies',
  ];
  print(desserts);
  desserts[1] = 'cakes';
  print(desserts);
  desserts.add('brownies');
  print(desserts);
  desserts.remove('cakes');
  print(desserts);
  desserts.remove(desserts[0]);
  print(desserts);
}

void function5() {
  final modifiableList = List.unmodifiable([DateTime.now(), DateTime.now()]);
  // final unmodifiableList = List.unmodifiable(modifiableList);
  print(modifiableList);
}

/// loops
function6() {
  final desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pies',
  ];
  for (var dessert in desserts) {
    print(dessert);
  }
  desserts.forEach(print);
}

/// code as UI
/// spread operator  ...
functions7() {
  const pastries = [
    'cookies',
    'croissants',
  ];
  const candy = [
    'Junior Mints',
    'Twizzlers',
    'M&Ms',
  ];
  const desserts = [
    'donuts',
    ...candy,
    ...pastries,
  ];
  print(desserts);
}

/// null spread operator ...?
functions8() {
  const pastries = [
    'cookies',
    'croissants',
  ];
  List<String>? candy;
  final desserts = [
    'donuts',
    ...?candy,
    ...pastries,
  ];
  print(desserts);
}

/// collection if
function9() {
  const peanutAllergy = true;
  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);
}

///collection for
function10() {
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
}

/// maps
function11() {
  final emptyMap = {}; // dart infers  it map , not set
  print(emptyMap.length);
  final digitToWord = {
    1: 'one',
    1: 'two',
    3: 'three',
    4: 'four',
  };
  print(digitToWord);
}

/// map strings to list
function12() {
  final treasureMap = {
    'garbage': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };
  print(treasureMap);
  print(treasureMap['garbage']); // accessing map through key
  print(treasureMap['silver']); // null if key is not present
}

/// map operations
functions13() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  inventory['brownies'] = 3; //adding element
  inventory['cakes'] = 1; //updating element
  inventory.remove('cookies'); // removing an element
  print(inventory);

  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  inventory.forEach((key, value) => print('$key ->$value'));

  for (final entry in inventory.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}
