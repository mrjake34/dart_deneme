final class SwitchFunction {
  static action(String action, int code, [String? value]) {
    switch ((action, code)) {
      case ('sayHi', 1):
        return print('Hi $value');
      case ('sayHello', 1):
        return print('Hello $value');
      case ('doSomething', 2):
        return print('How are you $value');
      case ('doSomething', 3):
        return print('What is your name');
    }
  }
}

void main() {
  SwitchFunction.action('sayHi', 1, 'John');
  SwitchFunction.action('sayHello', 1, 'Jane');
  SwitchFunction.action('doSomething', 2, 'John');
  SwitchFunction.action('doSomething', 3);
}
