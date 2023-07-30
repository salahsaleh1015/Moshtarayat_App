import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final baseUrl = 'https://student.valuxapps.com/api/';

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final result = await _dio.get('$baseUrl$endPoint');
    return result.data;
  }
}
