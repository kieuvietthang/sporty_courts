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
import 'package:sporty_courts/screens/splash/controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
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
              child: Container(
                height: 15,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.veryDarkCyan,width: 1)
                ),
                child: LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  animation: true,
                  animationDuration: 2000,
                  lineHeight: 12,
                  percent: 1,
                  progressColor: AppColors.cyan,
                  backgroundColor: AppColors.white,
                  barRadius: const Radius.circular(6),
                ),
              )
            )
          ],
        ));
      },
    );
  }
}
