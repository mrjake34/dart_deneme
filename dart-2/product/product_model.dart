part of product;

final class ProductModel {
  final String? name;
  final String? description;

  const ProductModel({this.name, this.description});

  factory ProductModel.dummy() {
    return ProductModel(name: 'Product 1', description: 'Description 1');
  }

  external const factory ProductModel.empty();
}
