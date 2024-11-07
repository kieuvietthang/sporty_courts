import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sporty_courts/api_controller/api_service.dart';
import 'package:sporty_courts/models/register/register.dart';
import 'package:sporty_courts/screens/home/view/home_screen.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWorkController = TextEditingController();
  TextEditingController forgotPassWorkController = TextEditingController();

  final ApiService apiService = ApiService();
  var register = Rxn<Register>();

  var token = ''.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> registerAccount(
      String userName, String email, String passWork) async {
    try {
      final response =
          await apiService.registerAccount(userName, email, passWork);
      register.value = response;
      if (register.value != null) {
        setToken(register.value!.access.toString());
        Get.to(() => HomeScreen());
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> setToken(String newToken) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', newToken);
      token.value = newToken;
    } catch (e) {
      print("Lỗi khi lưu token: $e");
    }
  }

  Future<void> loadToken() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      token.value = prefs.getString('token') ?? '';
    } catch (e) {
      print("Lỗi khi tải token: $e");
    }
  }
}
