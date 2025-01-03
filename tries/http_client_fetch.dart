import 'dart:async';
import 'dart:convert';
import 'dart:io';

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
  final List<Users>? data;
  final int? statusCode;

  Response({this.data, this.statusCode});

  factory Response.fromJson(dynamic body, {int? statusCode}) => Response(
        data: List<Users>.from(
          json.decode(body).map(
                (e) => Users.fromJson(e),
              ),
        ),
        statusCode: statusCode,
      );

  @override
  String toString() {
    return 'body: $data \n'
        'statusCode: $statusCode';
  }
}

final class Users {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  // final Address? address;
  final String? phone;
  final String? website;
  // final Company? company;
  final String school;

  Users({
    this.id,
    this.name,
    this.username,
    this.email,
    // this.address,
    this.phone,
    this.website,
    // this.company,
    required this.school,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        // address: Address.fromJson(json['address']),
        phone: json['phone'],
        website: json['website'],
        // company: Company.fromJson(json['company']),
        school: json['school'],
      );

  @override
  String toString() {
    return 'id: $id \n'
        'name: $name \n'
        'username: $username \n'
        'email: $email \n'
        // 'address: $address \n'
        'phone: $phone \n'
        'website: $website \n'
        // 'company: $company \n'
        'school: $school';
  }
}

void main() async {
  final timer = Stopwatch();
  timer.start();
  final service = Service('https://jsonplaceholder.typicode.com/users');
  final response = await service.fetch();
  print(response);
  timer.stop();
  print(timer.elapsed);
}
