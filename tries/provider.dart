class BuildContext {}

class Provider {
  static T of<T>(BuildContext context, {bool listen = true}) {
    final model = ProductViewModel();
    return model as T;
  }
}

extension ContextMixin on BuildContext {
  T watch<T>() {
    return Provider.of<T>(this);
  }

  T read<T>() {
    return Provider.of<T>(this, listen: false);
  }
}

void main(List<String> args) {
  final context = BuildContext();
  final products = context.read<ProductViewModel>().products;
  print(products);
}

final class ProductViewModel {
  List<Products>? _products;

  List<Products>? get products => _products;

  ProductViewModel() {
    setProducts();
  }

  void setProducts() {
    _products = [
      Products(title: 'Macbook', price: 1000.20),
      Products(title: 'Monster', price: 600.99),
    ];
  }
}

final class Products {
  final String? title;
  final double? price;

  Products({this.title, this.price});
}
