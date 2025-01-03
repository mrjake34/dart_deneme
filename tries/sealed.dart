sealed class SealedCar {
  final String? model;

  SealedCar({
    this.model,
  });

  void drive();
}

class SealedFord extends SealedCar {
  SealedFord({
    String? model,
  }) : super(
          model: model,
        );

  @override
  void drive() {
    print("Driving...");
  }
}
