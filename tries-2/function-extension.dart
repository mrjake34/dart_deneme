import 'dart:async';

extension FunctionExtension on Function {
  Future<Completer> run(Completer completer) async {
    if (completer.isCompleted) {
      final value = await completer.future;
      print('Function ${value}');
      return completer;
    } else {
      await this();
      completer.complete('Done');
      return completer;
    }
  }
}

void main() async {
  final sayHello = (String name) {
    return print('Hello $name');
  };
  Completer completer = Completer();
  completer = await sayHi.run(completer);
  completer = await sayHello.run(completer);
}

void sayHi() async {
  await Future.delayed(Duration(seconds: 1));
  return print('Hi');
}
