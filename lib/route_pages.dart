import 'package:get/get.dart';
import 'package:sporty_courts/screens/forgot_passwork/view/forgot_passwork_screen.dart';
import 'package:sporty_courts/screens/forgot_passwork/view/otp_screen.dart';
import 'package:sporty_courts/screens/introduce/view/introduce_screen.dart';
import 'package:sporty_courts/screens/login/view/login_screen.dart';
import 'package:sporty_courts/screens/register/view/register_screen.dart';
import 'package:sporty_courts/screens/splash/view/splash_screen.dart';

class RoutePageApp {
  static List<GetPage<dynamic>> routePages = [
    GetPage(name: '/splash', page: () => SplashScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/introduce', page: () => IntroduceScreen()),
    GetPage(name: '/register', page: () => RegisterScreen()),
    GetPage(name: '/forgotPasswork', page: () => ForgotPassworkScreen()),
    GetPage(name: '/otp', page: () => OTPScreen()),
  ];
}
