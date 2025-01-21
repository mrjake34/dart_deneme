import 'model_try.dart';

Never setException([String? message]) {
  while (message != null) {
    throw Exception(message);
  }
  return throw Exception('An exception occurred');
}

void main() {
  final productRepository = ProductRepository();
  // productRepository.loadProducts();
  final products = productRepository.getProducts();
  products.forEach((product) {
    print(product.name);
  });
}

final class ProductRepository {
  final List<Product> _products = [];
  List<Product> getProducts() {
    if (_products.isEmpty) {
      setException();
      //setException('Products are not loaded');
    }else {
      return _products;
    }
  }

  void loadProducts() {
    _products.add(Product(name: 'Laptop', price: 100));
    _products.add(Product(name: 'Mouse', price: 10));
    _products.add(Product(name: 'Keyboard', price: 20));
  }
}