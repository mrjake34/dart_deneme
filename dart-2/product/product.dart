library product;

part 'product_model.dart';
part 'product_view_model.dart';

void main() {
  final productModel = ProductModel(
    name: 'Product 1',
    description: 'Description 1',
  );
  final productRepository = ProductViewModel();
  productRepository.add(productModel);
  do {
    for (final product in productRepository.products) {
      print(product.name);
      print(product.description);
    }
  } while (productRepository.products.isNotEmpty);
}
