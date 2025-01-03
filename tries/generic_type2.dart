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

void main(List<String> args) {
  final genericType = GenericType<int, List<int>>(0, [0]);
  genericType.checkType<String>();
}
