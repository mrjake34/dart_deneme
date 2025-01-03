interface class Car {
  final String? name;
  final String? color;
  final int? price;
  final String? brand;
  final String? model;
  final String? type;
  final String? fuel;

  Car({
    this.name,
    this.color,
    this.price,
    this.brand,
    this.model,
    this.type,
    this.fuel,
  });

  void drive() {
    print("Driving...");
  }
}

class Ford extends Car {
  Ford({
    String? name,
    String? color,
    int? price,
    String? brand,
    String? model,
    String? type,
    String? fuel,
  }) : super(
          name: name,
          color: color,
          price: price,
          brand: brand,
          model: model,
          type: type,
          fuel: fuel,
        );

  factory Ford.fromJson(Map<String, dynamic> json) => Ford(
        name: json["name"],
        color: json["color"],
        price: json["price"],
        brand: json["brand"],
        model: json["model"],
        type: json["type"],
        fuel: json["fuel"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "color": color,
        "price": price,
        "brand": brand,
        "model": model,
        "type": type,
        "fuel": fuel,
      };
}

class Toyota extends Car {
  Toyota({
    String? name,
    String? color,
    int? price,
    String? brand,
    String? model,
    String? type,
    String? fuel,
  }) : super(
          name: name,
          color: color,
          price: price,
          brand: brand,
          model: model,
          type: type,
          fuel: fuel,
        );

  factory Toyota.fromJson(Map<String, dynamic> json) => Toyota(
        name: json["name"],
        color: json["color"],
        price: json["price"],
        brand: json["brand"],
        model: json["model"],
        type: json["type"],
        fuel: json["fuel"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "color": color,
        "price": price,
        "brand": brand,
        "model": model,
        "type": type,
        "fuel": fuel,
      };
}
