import 'try_types.dart';

void main() {
  final type = TryTypes<String>();
  final Map<Type, dynamic> map = {};
  map.addAll({type.typeOfThisGetter: 'hello'});
  final symbolMap = <Symbol, dynamic>{#hello: 'world'};

  NewFunction<int> newFunction = (a, b) => a + b;
  NewFunction<String> newFunctionString = (a, b) => a + b;

  print(map);
  print(symbolMap);
  print(newFunction(1, 2));
  print(newFunctionString('a', 'b'));
}

typedef NewFunction<T> = T Function(dynamic a, dynamic b);
