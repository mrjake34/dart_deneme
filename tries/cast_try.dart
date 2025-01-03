abstract class Vehicle {}

abstract class Human {}

final class Car extends Vehicle {}

final class Bike extends Vehicle {}

final class Child extends Human {}

void main(List<String> args) {
  final list = [Bike(), Car(), Bike()];
  final vehicleList = list.cast<Vehicle>();
  // final carList = list.cast<Car>();

  // final car = Car();
  // final bike = Bike();
  final child = Child();

  bool isVehicleList() {
    if (child is Vehicle) {
      return true;
    } else {
      return false;
    }
  }

  ;

  print(vehicleList);
  // print(carList);
  print(isVehicleList());
}
