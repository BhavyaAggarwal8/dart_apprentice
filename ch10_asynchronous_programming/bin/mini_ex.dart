Future<void> main() async {
  await miniExercisesFuture();
  //await miniExercisesStreams();
}

/// Mini-exercises: Futures
/*1. Use the Future.delayed constructor to provide a string
after two seconds that says “I am from the future.”
2. Create a String variable named message that awaits the
future to complete with a value.
3. Surround the code above with a try-catch block*/
Future<void> miniExercisesFuture() async {
  print('Start');
  try {
    final message = await Future<String>.delayed(
      Duration(seconds: 2),
      () => 'I am from the future.',
    );
    print(message);
  } catch (exception) {
    print(exception);
  } finally {
    print('end');
  }
}
