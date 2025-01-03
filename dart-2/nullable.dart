void main(List<String> args) {
  // Hatalı kullanım
  final result = Response();
  if (result.user != null) {
    print(result.user?.name);
  }

  /// Doğru kullanım
  final result2 = Response();
  final user = result2.user;
  if (user != null) {
    print(user.name);
  }
}

final class User {
  final String? name;

  User([this.name]);
}

final class Response {
  final User? user;

  Response({this.user});
}
