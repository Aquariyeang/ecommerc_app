import 'package:dio/dio.dart';

class WDioHelper {
  static final Dio dio = Dio();
  static const String _baseUrl =
      'https://your-api-base-url.com'; // Replace with your API base URL
  // Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await dio.get('$endpoint)');
    return _handleResponse(response);
  }

  // Helper method to make a POST request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await dio.post(
      data: data,
      '$_baseUrl/$endpoint',
      options: Options(headers: {'Content-Type': 'application/json'}),
    );
    return _handleResponse(response);
  }

  // Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await dio.put(
      '$_baseUrl/$endpoint',
      options: Options(headers: {'Content-Type': 'application/json'}),
      data: data,
    );
    return _handleResponse(response);
  }

// Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await dio.delete('$_baseUrl/$endpoint');
    return _handleResponse(response);
  }

// Handle the HTTP response
  static Map<String, dynamic> _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
