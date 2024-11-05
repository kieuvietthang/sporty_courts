import 'package:get/get.dart';
import 'package:sporty_courts/screens/introduce/view/introduce_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 3000),()async{
      await Get.to(IntroduceScreen());
    });

  }

}
