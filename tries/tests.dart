abstract final class Tests<E> {
  E? operator [](Object key);
}

final class Tests2 extends Tests<String> {
  @override
  String? operator [](Object key) => 'hello';

  // String operator ==(Object key) => 'hello';
}

void main(List<String> args) {
  print(Tests2());
}
