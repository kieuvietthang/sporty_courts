import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sporty_courts/constants/assets.dart';
import 'package:sporty_courts/constants/colors.dart';
import 'package:sporty_courts/constants/strings.dart';
import 'package:sporty_courts/constants/text_style.dart';
import 'package:sporty_courts/constants/values.dart';
import 'package:sporty_courts/screens/login/controller/login_controller.dart';
import 'package:sporty_courts/screens/splash/controller/splash_controller.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return Scaffold(
            body: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Image.asset(Assets.imgLoginBgr),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: AppValue.height(context) * 0.57,
                  decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    children: [
                      Text(DefaultString.sportyCourts)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
      },
    );
  }
}
