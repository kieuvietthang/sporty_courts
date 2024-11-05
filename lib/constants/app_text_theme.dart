import 'package:flutter/material.dart';

import 'font_family.dart';

extension TextThemeExt on BuildContext {
  AppTextStyle get textStyle => AppTextStyle(); // context.textStyle
}

extension TextStyleExt on TextStyle {
  /// fontWeight: normal
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);

  /// fontWeight: bold
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);

  /// color: white
  TextStyle get white => copyWith(color: Colors.white);

  TextStyle get greyD2 => copyWith(color: const Color(0xffB8B8D2));

  /// color: black
  TextStyle get black => copyWith(color: Colors.black);

  TextStyle get red => copyWith(color: const Color(0xFFFF2828));
  TextStyle get green => copyWith(color: const Color(0xFF10C500));

  TextStyle get grey => copyWith(
        color: const Color(0xFF7E7E7E),
      );

  TextStyle get blue1 => copyWith(color: const Color(0xFF089FDF));
}

class AppTextStyle {
  AppTextStyle._init();
  static final AppTextStyle _instance = AppTextStyle._init();
  factory AppTextStyle() => _instance;

  final TextStyle size10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );

  final TextStyle size26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );
  final TextStyle size28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.normal,
    fontFamily: FontFamily.manrope,
  );
}
