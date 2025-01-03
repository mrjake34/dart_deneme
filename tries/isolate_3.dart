import 'dart:isolate';

Future<void> main() async {
  final time = Stopwatch();
  time.start();
  final startTime = DateTime.now();
  print(startTime);
  print('findPrimeNumbers without Isolate ${time.elapsed}');
  print('findPrimeNumbers with Isolate ${time.elapsed}');
  Isolate.run(() => findPrimeNumbers(100000, 'With Isolate ${time.elapsed}'))
      .then((value) => print(DateTime.now()));
  findPrimeNumbers(100000, 'Without Isolate ${time.elapsed}');
  print('calculateAgeOfPerson without Isolate ${time.elapsed}');
  calculateAgeOfPerson('Without Isolate ${time.elapsed}');
  time.stop();
  print('Finish ${time.elapsed}');
}

Future<void> calculateStringLength(String elapsed) async {
  print('calculateStringLength ${'Hello World'.length} Finished Time $elapsed');
}

Future<void> calculateAgeOfPerson(String elapsed) async {
  print('calculateAgeOfPerson ${2024 - 1992} Finished Time $elapsed');
}

Future<void> findPrimeNumbers(int value, String elapsed) async {
  List<int> primes = [];
  for (int i = 2; i <= value; i++) {
    bool isPrime = true;
    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primes.add(i);
    }
  }
  print('calculateAgeOfPerson ${primes.length} Finished Time $elapsed');
}
