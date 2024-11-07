import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sporty_courts/constants/assets.dart';
import 'package:sporty_courts/constants/colors.dart';
import 'package:sporty_courts/constants/strings.dart';
import 'package:sporty_courts/constants/text_style.dart';
import 'package:sporty_courts/constants/values.dart';
import 'package:sporty_courts/screens/home/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: controller.center,
              zoom: 11.0,
            ),
          ),
        );
      },
    );
  }


}
