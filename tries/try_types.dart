final class TryTypes<T> {
  final Type _typeOfThis = TryTypes<T>;

  TryTypes() {
    print(_typeOfThis);
  }

  Type get typeOfThisGetter => _typeOfThis;
}
