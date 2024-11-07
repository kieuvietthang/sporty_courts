import 'package:dio/dio.dart';
import 'package:sporty_courts/models/register/register.dart';

class ApiService {
  final Dio dio = Dio();
  final String baseUrl = "http://171.244.64.245:8002/api";

  Future<Register> registerAccount(String username, String email, String password) async {
    String url = '$baseUrl/auth/signup/';
    Map<String, dynamic> data = {
      "username": username,
      "email": email,
      "password": password,
      "role": 1,

    };
    try {
      final response = await dio.post(url, data: data);
      if (response.statusCode == 201) {
        return Register.fromJson(response.data);
      } else {
        throw Exception('Failed to add marker');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        print('Error: ${e.response?.statusCode}');
        print('Data: ${e.response?.data}');
        print('Headers: ${e.response?.headers}');
      } else {
        print('Error sending request: ${e.message}');
      }
      throw Exception('Error: ${e.message}');
    }
  }
}
