abstract class Animal {
  void breathe();
  void makeNoise();
  Never die() => throw Exception('I am dead');

  final String? name;
  final int? age;

  Animal({this.name, this.age});
}

class Dog extends Animal {
  Dog() : super(name: 'Dog', age: 2);

  @override
  void breathe() => print('$name is breathing');

  @override
  void makeNoise() => print('$name is barking');
}

class Cat extends Animal {
  Cat() : super(name: null, age: 8);

  @override
  void breathe() => print('$name is breathing');

  @override
  void makeNoise() => print('$name is meowing');
}

class UnnamedAnimal extends Animal {
  UnnamedAnimal(String name, int age) : super(name: name, age: age);

  @override
  void breathe() => print('$name is breathing');

  @override
  void makeNoise() => print('$name is making noise');
}

void main() {
  final dog = Dog();
  final cat = Cat();
  final horse = UnnamedAnimal('Horse', 3);

  dog.breathe();
  dog.makeNoise();
  horse.breathe();
  if ((cat.age ?? 0) >= 8) {
    cat.die();
  }
  if ((dog.age ?? 0) >= 8) {
    dog.die();
  }

  cat.breathe();
  cat.makeNoise();
  horse.makeNoise();
}
