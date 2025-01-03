final class CustomConstructor {
  final int value;

  CustomConstructor._(this.value);

  factory CustomConstructor.length(String str) =>
      CustomConstructor._(str.length);

  factory CustomConstructor.fromLength(int str) => CustomConstructor._(str);
}

void main(List<String> args) {
  final customConstructor = CustomConstructor._(1);
  final customLenght = CustomConstructor.length('World');
  final customFromLength = CustomConstructor.fromLength(5);
  print(customConstructor.value);
  print(customLenght.value);
  print(customFromLength.value);
}
