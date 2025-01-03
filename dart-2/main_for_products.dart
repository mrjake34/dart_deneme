import 'product/product.dart';

Future<void> main() async {
  final productModel = ProductModel(
    name: 'Product 1',
    description: 'Description 1',
  );

  final productRepository = ProductViewModel();

  productRepository.add(productModel);

  productRepository.products.forEach((product) {
    print(product.name);
    print(product.description);
  });
}
