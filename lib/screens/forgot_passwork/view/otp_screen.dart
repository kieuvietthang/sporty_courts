import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sporty_courts/constants/assets.dart';
import 'package:sporty_courts/constants/colors.dart';
import 'package:sporty_courts/constants/strings.dart';
import 'package:sporty_courts/constants/text_style.dart';
import 'package:sporty_courts/constants/values.dart';
import 'package:sporty_courts/screens/forgot_passwork/controller/forgot_passwork_controller.dart';
import 'package:sporty_courts/widgets/form_contact.dart';

class OTPScreen extends GetView<ForgotPassworkController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPassworkController>(
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                Image.asset(Assets.imgLoginBgr),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: AppValue.height(context) * 0.498,
                        padding: const EdgeInsets.only(top: 17),
                        decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),
                        child: Column(
                          children: [
                            Text(
                              DefaultString.txtForgotPasswordr,
                              style: TextStyleApp.textSize16W700Black,
                            ),
                            FormContact(
                              controller: null,
                              labelText: DefaultString.txtLoginName,
                            ),
                            FormContact(
                              controller: null,
                              labelText: DefaultString.txtPhone,
                            ),
                            FormContact(
                              controller: null,
                              labelText: DefaultString.txtOTP,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: DefaultString.txtOTPMess,
                                    style: TextStyleApp.textSize12W600Black
                                  ),
                                   TextSpan(
                                    text: DefaultString.txtResend,
                                    style: TextStyleApp.textSize12W600DarkCyan,
                                  ),
                                ],
                              ),
                            ),
                            _btn(
                                context,
                                DefaultString.txtComplete,
                                TextStyleApp.textSize16W600White,
                                AppColors.darkCyan,
                                () {}),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 24,
                        child: GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: SvgPicture.asset(Assets.icBack),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  GestureDetector _btn(BuildContext context, String name, TextStyle textStyle,
      Color color, Function() onClick) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: AppValue.height(context) * (48 / 812),
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
