typedef AsyncFunction<T> = Future<T> Function(List<T>);

void main() {
  final AsyncFunction<int> asyncFunction = (List<int> list) async {
    for (final int i in list) {
      print(i);
      await Future.delayed(const Duration(seconds: 1));
    }
    return 0;
  };

  final List<int> list = [1, 2, 3, 4, 5];
  asyncFunction(list).then((value) => print(value));
}
