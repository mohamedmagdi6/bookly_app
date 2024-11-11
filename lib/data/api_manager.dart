import 'package:bookly_app/data/api_constant.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {
  late Dio dio;
  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
    String endPoint, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameter,
  }) {
    return dio.get(ApiConstant.baseUrl + endPoint,
        queryParameters: queryParameter,
        options: Options(
          headers: headers,
          validateStatus: (status) => true,
        ));
  }
}
