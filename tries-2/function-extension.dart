import 'dart:async';

extension FunctionExtension on Function {
  Future<Completer> run(Completer completer) async {
    if (completer.isCompleted) {
      print('Function Already Done');
      return completer;
    } else {
      await this();
      print('Function Done');
      completer.complete();
      return completer;
    }
  }
}

void main() async {
  Completer completer = Completer();
  Completer otherCompleter = Completer();
  completer = await LoginCubit.sayHi.run(completer);

  if (completer.isCompleted) {
    otherCompleter = await LoginCubit.sayHello.run(otherCompleter);
  }

  if (otherCompleter.isCompleted) {
    print('All Done');
  }
}

final class LoginCubit {
  static void sayHi() async {
    await Future.delayed(Duration(seconds: 1));
    return print('Hi');
  }

  static void sayHello() async {
    await Future.delayed(Duration(seconds: 1));
    return print('Hello');
  }
}
