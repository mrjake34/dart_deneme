abstract class Vehicle {
  int horsePower = 0;
}

final class Car extends Vehicle with Run<Car>, Start<Car> {
  @override
  int get horsePower => super.horsePower;
  @override
  set horsePower(int _horsePower) => super.horsePower = _horsePower;
}

final class Bus extends Vehicle with Run<Bus>, Start<Bus> {
  @override
  int get horsePower => super.horsePower;
  @override
  set horsePower(int _horsePower) => super.horsePower = _horsePower;
}

mixin class Run<T extends Vehicle> {
  void run(T value) {
    print('$T is running with ${value.horsePower}');
  }
}

mixin class Start<T extends Vehicle> {
  void start(T value) {
    print('$T is staring with ${value.horsePower}');
  }
}

void main() {
  final car = Car();
  car.horsePower = 400;
  car.start(car);
  car.run(car);

  final bus = Bus();
  bus.horsePower = 150;
  bus.start(bus);
  bus.run(bus);
}
