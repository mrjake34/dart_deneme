part of product;

class ProductViewModel {
  final List<ProductModel> _products = [];

  void add(ProductModel product) {
    if (_isSameValue(product)) {
      return;
    }
    _products.add(product);
  }

  List<ProductModel> get products => _products;


  bool _isSameValue(ProductModel product) {
    return _products.any((element) {
      return element.name == product.name &&
          element.description == product.description &&
          element.hashCode == product.hashCode;
    });
  }
}
