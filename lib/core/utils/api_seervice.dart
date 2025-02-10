import 'package:dio/dio.dart';

class ApiSeervice {
  final Dio _dio;
  final baseUil = "https://fakestoreapi.com/";

  ApiSeervice(this._dio);
  Future<List <dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('${baseUil}$endpoint');
    return response.data;
  }
}
