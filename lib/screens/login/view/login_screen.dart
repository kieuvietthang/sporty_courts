import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sporty_courts/constants/assets.dart';
import 'package:sporty_courts/constants/colors.dart';
import 'package:sporty_courts/constants/strings.dart';
import 'package:sporty_courts/constants/text_style.dart';
import 'package:sporty_courts/constants/values.dart';
import 'package:sporty_courts/screens/forgot_passwork/view/forgot_passwork_screen.dart';
import 'package:sporty_courts/screens/login/controller/login_controller.dart';
import 'package:sporty_courts/screens/register/view/register_screen.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
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
                    child: Container(
                      width: double.infinity,
                      height: AppValue.height(context) * 0.57,
                      padding: EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Column(
                        children: [
                          Text(
                            DefaultString.sportyCourts,
                            style: TextStyleApp.textSize24W800VeryDarkCyan,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                AppValue.width(context) * (40 / 375),
                                32,
                                AppValue.width(context) * (40 / 375),
                                0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: DefaultString.txtLoginName,
                                labelStyle:
                                    const TextStyle(color: AppColors.gray),
                                border: const OutlineInputBorder(),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray, width: 0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray, width: 0),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                contentPadding: EdgeInsets.fromLTRB(
                                    AppValue.width(context) * (20 / 375),
                                    0,
                                    AppValue.width(context) * (20 / 375),
                                    0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                AppValue.width(context) * (40 / 375),
                                20,
                                AppValue.width(context) * (40 / 375),
                                0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: DefaultString.txtPassWork,
                                labelStyle:
                                    const TextStyle(color: AppColors.gray),
                                border: const OutlineInputBorder(),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray, width: 0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray, width: 0),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                contentPadding: EdgeInsets.fromLTRB(
                                    AppValue.width(context) * (20 / 375),
                                    0,
                                    AppValue.width(context) * (20 / 375),
                                    0),
                              ),
                            ),
                          ),
                          _btn(
                              context,
                              DefaultString.txtLogin,
                              TextStyleApp.textSize16W600White,
                              AppColors.darkGray,
                              () {}),
                          GestureDetector(
                            onTap: (){
                              Get.to(() => ForgotPassworkScreen());
                            },
                            child: Text(
                              DefaultString.txtForgotPassword,
                              style: TextStyleApp.textSize14W600DarkCyan,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                DefaultString.txtNoAccount,
                                style: TextStyleApp.textSize14W600DarkGray,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to(() => RegisterScreen());
                                },
                                child: Text(
                                  DefaultString.txtRegisterNow,
                                  style: TextStyleApp.textSize14W600DarkCyan,
                                ),
                              ),
                            ],
                          )
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

  GestureDetector _btn(BuildContext context, String name, TextStyle textStyle,
      Color color, Function() onClick) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: AppValue.height(context) * (48 / 812),
        width: AppValue.width(context) * 0.786,
        margin: const EdgeInsets.only(top: 20, bottom: 24),
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
