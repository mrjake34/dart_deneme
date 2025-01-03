final class GenericType<T, S extends List<T>> {
  T value;
  S list;

  GenericType(this.value, this.list);

  void checkType<C>() {
    assert(C == T, 'Hatalı');
    print(T);
    print(S);
  }

  void addToList(T value) {
    list.add(value);
  }
}

void main() {
  final genericType = GenericType<int, List<int>>(0, [0]);
  // TestFunction<int, int, int> function = (a, b) => a + b;
  TestFunction<List<dynamic>, String, int, bool> functionString = (a, b, c) {
    return [a, 10, true];
  };
  final tryTypes = TryTypes<bool>();

  print(tryTypes.typeOfThisGetter);

  // print(function(10, 20));
  // print(functionString('Hello', 'World', 'New'));

  genericType.checkType<String>();
  // print(genericType.value);
  // genericType.addToList(1);
  // print(genericType.list[0]);
}

typedef TestFunction<R, K, V, S> = R Function(K a, V b, S c);

final class TryTypes<T> {
  final Type _typeOfThis = T;

  TryTypes() {
    print(_typeOfThis);
  }

  Type get typeOfThisGetter => _typeOfThis;
}
