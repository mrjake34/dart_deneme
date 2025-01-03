import 'dart:io';

abstract class BaseResponseModel<T> extends ErrorModel {
  T? data;

  BaseResponseModel({this.data});

  BaseResponseModel fromJson(Map<String, dynamic> json);
}

abstract class ErrorModel {
  String? error;

  ErrorModel({this.error});

  ErrorModel fromErrorJson(Map<String, dynamic> json);
}

final class ResponseModel<T> extends BaseResponseModel<T> {
  @override
  T? data;
  @override
  String? error;

  ResponseModel({this.data, this.error});

  @override
  ErrorModel fromErrorJson(Map<String, dynamic> json) {
    return ResponseModel(error: json["error"]);
  }

  @override
  BaseResponseModel fromJson(Map<String, dynamic> json) {
    if (json["error"] != null) {
      return ResponseModel(error: json["error"]);
    }
    return ResponseModel(data: json["data"]);
  }
}

abstract class IService {
  Future<ResponseModel> checkConnect();
}

final class Service extends IService {
  @override
  Future<ResponseModel> checkConnect() async {
    try {
      final internetAddress = await InternetAddress.lookup("google.com");
      final request = internetAddress.first.rawAddress.isNotEmpty;
      if (request) {
        return ResponseModel<String>(data: "Success");
      } else {
        return ResponseModel(error: "Error");
      }
    } on Exception catch (e) {
      return ResponseModel(error: e.toString());
    }
  }
}

Future<void> main() async {
  final responseModel = await Service().checkConnect();
  if (responseModel.error != null) {
    print(responseModel.error);
  } else {
    print(responseModel.data);
  }
}
