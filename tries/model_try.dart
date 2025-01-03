import 'equatable.dart';

void main(List<String> args) {
  final prod1 = Product(name: 'Laptop', price: 100);
  final prod2 = Product(name: 'Laptop', price: 200);

  print(prod1 == prod2);

  final List<Product> products = [prod1, prod2];
  final index = products.indexWhere((element) => element.price == 100);

  products.forEach((product) {
    if (product.price == 100) {
      final newProduct = product.copyWith(price: 150);
      products[index] = newProduct;
    }
  });
  print(products.map((e) => e.price).toList());
}

final class Product extends Equatable {
  final String? name;
  final double? price;

  Product({this.name, this.price});

  Product copyWith({String? name, double? price}) {
    return Product(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  @override
  List<Object?> get probs => [name, price];
}
