import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sporty_courts/constants/assets.dart';
import 'package:sporty_courts/constants/colors.dart';
import 'package:sporty_courts/constants/strings.dart';
import 'package:sporty_courts/constants/text_style.dart';
import 'package:sporty_courts/constants/values.dart';
import 'package:sporty_courts/screens/introduce/controller/login_controller.dart';
import 'package:sporty_courts/screens/login/view/login_screen.dart';
import 'package:sporty_courts/screens/register/view/register_screen.dart';

class IntroduceScreen extends GetView<IntroduceController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroduceController>(
      builder: (controller) {
        return Scaffold(
            body: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.imgBgr), fit: BoxFit.cover)),
              padding: EdgeInsets.only(
                  top: AppValue.paddingTop(context) + 20, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DefaultString.sportyCourts,
                    style: TextStyleApp.textSize36W800White,
                  ),
                  Text(
                    DefaultString.txtPreface,
                    style: TextStyleApp.textSize14W700LightCyan,
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: AppValue.paddingBottom(context) + 90,
                left: 40,
                right: 40,
                child: Column(
                  children: [
                    _btn(
                        context,
                        DefaultString.txtLogin,
                        TextStyleApp.textSize16W600White,
                        AppColors.veryDarkCyan,
                        () {
                          Get.to(()=>LoginScreen());
                        }),
                    _btn(
                        context,
                        DefaultString.txtRegister,
                        TextStyleApp.textSize16W600darkCyan,
                        AppColors.white,
                        () {  Get.to(()=>RegisterScreen());

                        }),
                  ],
                ))
          ],
        ));
      },
    );
  }

  GestureDetector _btn(BuildContext context, String name, TextStyle textStyle,
      Color color, Function() onClick) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: AppValue.height(context) * 0.054,
        width: AppValue.width(context) * 0.786,
        margin: const EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        alignment: Alignment.center,
        child: Text(
          name,
          style: textStyle,
        ),
      ),
    );
  }
}
