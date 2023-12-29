import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(
    this.dio,
  );
  // Endpoints is the end of Url
  Future<Map<String, dynamic>> get({required String EndPoint}) async {
    var response = await dio.get('$baseUrl$EndPoint');
    return response.data;
  }
}
