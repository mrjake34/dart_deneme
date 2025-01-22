import 'dart:async';

extension FunctionExtension on Function {
  void callWithDelay(Duration duration) {
    Future.delayed(duration, () => this());
  }

  Future<bool> comp(Completer completer) async {
    if (completer.isCompleted) {
      print('Completed');
      return completer.isCompleted;
    } else {
      print('Not completed');
      await this();
      completer.complete();
      return completer.isCompleted;
    }
  }
}

void main() async {
  final sayHello = () {
    return print('Hello');
  };

  final completer = Completer();
  final isCompleted = await sayHi.comp(completer);

  if (isCompleted) {
    sayHello
      ..callWithDelay(Duration(seconds: 2))
      ..comp(completer);
  }
}

void sayHi() async {
  Future.delayed(Duration(seconds: 1));
  return print('Hi');
}
