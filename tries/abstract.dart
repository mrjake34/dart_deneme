abstract class Car {
  final String? model;

  Car({
    this.model,
  });

  void drive();
}

class Ford extends Car {
  Ford({
    String? model,
  }) : super(
          model: model,
        );

  @override
  void drive() {
    print("Driving...");
  }
}

class BMW implements Car {
  BMW();

  @override
  void drive() {
    print("Driving...");
  }

  @override
  String? get model => model;
}
