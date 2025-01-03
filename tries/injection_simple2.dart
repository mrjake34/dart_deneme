import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'photo_model.dart';
import 'users.dart';

final class Service {
  final String url;

  Service(this.url);

  Future<Response> fetch() async {
    final client = HttpClient();
    final request = await client.getUrl(Uri.parse(url));
    final response = await request.close();
    final responseBody = await response.transform(Utf8Decoder()).join();
    return Response.fromJson(responseBody, statusCode: response.statusCode);
  }
}

final class Response {
  final String? data;
  final int? statusCode;

  Response({this.data, this.statusCode});

  factory Response.fromJson(String body, {int? statusCode}) => Response(
        data: body,
        statusCode: statusCode,
      );

  @override
  String toString() {
    return 'body: $data \n'
        'statusCode: $statusCode';
  }
}

final class UserService {
  final service = Service('https://jsonplaceholder.typicode.com/users');

  Future<List<Users>> fetchUsers() async {
    final response = await service.fetch();
    if (response.data == null) return [];
    return List<Users>.from(
      json.decode(response.data!).map(
            (e) => Users.fromJson(e),
          ),
    );
  }
}

final class PhotoService {
  final service = Service(
      'https://api.slingacademy.com/v1/sample-data/photos?offset=0&limit=10');

  Future<List<Photos>> fetchPhotos() async {
    final response = await service.fetch();

    if (response.data == null) return [];
    final photosResponse = PhotoResponse.fromJson(json.decode(response.data!));
    if (photosResponse.photos == null) return [];
    return photosResponse.photos!;
  }
}

void main() async {
  final userService = UserService();
  final photosService = PhotoService();
  final users = await userService.fetchUsers();
  final photos = await photosService.fetchPhotos();

  print(users.first);
  print(photos.first);
}
