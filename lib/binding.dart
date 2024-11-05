import 'package:get/get.dart';
import 'package:sporty_courts/screens/introduce/controller/login_controller.dart';
import 'package:sporty_courts/screens/login/controller/login_controller.dart';
import 'package:sporty_courts/screens/splash/controller/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<IntroduceController>(() => IntroduceController(), fenix: true);
  }
}