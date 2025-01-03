import 'singleton.dart';

void main(List<String> args) {
  final one = SingletonOne.instance;
  print(one);
  final two = SingletonTwo.instance;
  print(two);
  SingletonThree.init();
  final three = SingletonThree.instance;
  print(three);
  final four2 = SingletonFour('Hello');
  final four3 = SingletonFour('World');
  final four = SingletonFour.instance;
  print(four.data);
}
