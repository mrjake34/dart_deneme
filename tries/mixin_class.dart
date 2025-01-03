interface class INewClass extends AbsClass with Mix, HelloWorld {
  @override
  void calc() {
    print(2 + 2);
  }
}

final class NewClass extends INewClass {}

/// AbsClass'a özel mixin
mixin Mix on AbsClass {
  void calc();
}

abstract interface class AbsClass with HelloWorld, Mix2 {}

// /// AbsClass dan türememiş olan sınıf Mix Mixinini kullanamıyor
// class SecondClass on Mix {
//   @override
//   void calc() {
//     // TODO: implement calc
//   }
// }

/// Ortak kullanım mixini
mixin Mix2 {}

/// Ortak mixin kullanabilen sınıf
final class ThirdClass with Mix2 {}

/// Mixin aksine sınıf olarakta instance edilerek kullanılabilir, normal sınıf olarak kullanılabilir
mixin class HelloWorld<T> {
  void output() => print("$this $T");
}

abstract mixin class AbsMixin {
  void say() => print(this);
}

final class AbsMixinUser with AbsMixin {}

final class AbsMixinUser2 extends AbsMixin {}

void main(List<String> args) {
  final newClass = NewClass();
  newClass.calc();

  ///Örnek oluşturulamaz
  // final mix2 = Mix2();

  ///örnek oluşturulamaz
  // final absMixin = AbsMixin();

  final helloWorld = HelloWorld<String>();

  helloWorld.output();
}
