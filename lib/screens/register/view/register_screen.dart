import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sporty_courts/constants/assets.dart';
import 'package:sporty_courts/constants/colors.dart';
import 'package:sporty_courts/constants/strings.dart';
import 'package:sporty_courts/constants/text_style.dart';
import 'package:sporty_courts/constants/values.dart';
import 'package:sporty_courts/screens/login/view/login_screen.dart';
import 'package:sporty_courts/screens/register/controller/register_controller.dart';
import 'package:sporty_courts/widgets/form_contact.dart';

class RegisterScreen extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
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
                    height: AppValue.height(context) * 0.77,
                    padding: const EdgeInsets.only(top: 40),
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
                          labelText: DefaultString.txtEmail,
                        ),
                        FormContact(
                          controller: null,
                          labelText: DefaultString.txtPassWork,
                        ),
                        FormContact(
                          controller: null,
                          labelText: DefaultString.txtEnterPassword,
                        ),
                        _btn(
                            context,
                            DefaultString.txtRegister,
                            TextStyleApp.textSize16W600White,
                            AppColors.darkCyan,
                                () {}),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              DefaultString.txtAccount,
                              style: TextStyleApp.textSize14W600DarkGray,
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.back();
                              },
                              child: Text(
                                DefaultString.txtLogin,
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
        margin: const EdgeInsets.only(top: 20, bottom: 35),
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
