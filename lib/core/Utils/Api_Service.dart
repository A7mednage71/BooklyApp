import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);

  // Endpoints is the end of Url
  Future<Map<String, dynamic>> get({required String EndPoint}) async {
    var response = await _dio.get('$_baseUrl$EndPoint');
    return response.data;
  }
}
