// Anotasyon Tanımı
import 'dart:mirrors';

class ApiEndpoint {
  final String url;
  final String method;
  const ApiEndpoint(this.url, this.method);
}

// Anotasyonlu Sınıf
@ApiEndpoint("/users", "GET")
class UserApi {}

@ApiEndpoint("/products", "POST")
class ProductApi {}

void handleApi(dynamic instance) {
  // Yansıma ile sınıfın anotasyonlarını kontrol ediyoruz.
  var instanceMirror = reflect(instance);
  var classMirror = instanceMirror.type;

  for (var metadata in classMirror.metadata) {
    if (metadata.reflectee is ApiEndpoint) {
      var annotation = metadata.reflectee as ApiEndpoint;
      print(
          "API çağrısı: URL = ${annotation.url}, Yöntem = ${annotation.method}");
    }
  }
}

void main() {
  var userApi = UserApi();
  var productApi = ProductApi();

  handleApi(userApi);     // API çağrısı: URL = /users, Yöntem = GET
  handleApi(productApi);  // API çağrısı: URL = /products, Yöntem = POST
}


