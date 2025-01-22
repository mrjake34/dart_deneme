import 'dart:async' show Completer;

import 'function-extension.dart';

Future<void> main(List<String> args) async {
  final sayHello = () {
    print('Hello World');
  };
  final completer = Completer();
  print(completer.isCompleted);
  await sayHello.comp(completer);
  print(completer.isCompleted);

  sayHi.comp(completer);
}


void sayHi() {
  print('Hi');
}