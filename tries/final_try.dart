final class BaseClass {
  int count = 0;
}

final class FinalClass extends BaseClass {
  @override
  int get count => super.count;

  @override
  set count(int _count) => super.count = _count;
}

abstract final class BigFinalClass {
  String str = 'Hello';
}

sealed class OldClass extends BigFinalClass {
  @override
  String get str => super.str;

  @override
  set str(String _str) => super.str = _str;
}

base class NewClass extends OldClass {
  @override
  String get str => super.str;

  @override
  set str(String _str) => super.str = _str;
}

void main(List<String> args) {}

final class OldFinal {}

final class NewFinal extends OldFinal {}

final class AlternativeFinal extends OldFinal {}
