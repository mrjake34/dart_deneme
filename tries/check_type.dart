final class Service<T> {
  T checkType(dynamic value) {
    if (value.runtimeType == T) {
      return _valueType(value);
    }
    throw Exception('Type is not match');
  }

  T _valueType(dynamic value) {
    return value as T;
  }

  Type get getType => T;
}

void main(List<String> args) {
  final service2 = Service<String>();
  final service = Service<Response>();
  // final response2 = service2.checkType("Hello World");
  print(service2.getType);

  // final response =
  //     service.checkType("Response(message: Hello, statusCode: 200)");
  // print(response);
}

final class Response {
  final String? message;
  final int? statusCode;

  Response({this.message, this.statusCode});

  @override
  String toString() {
    return 'Response{message: $message, statusCode: $statusCode}';
  }
}
