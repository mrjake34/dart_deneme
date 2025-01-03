void foo<T extends void Function()>(T func) {}

void main() {
  foo(() {
    throw Exception(); // LINT
  });
}

final class safe {
  safe();
}

void bar() {
  throw Exception(); // LINT
}
