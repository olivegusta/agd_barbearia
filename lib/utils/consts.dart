import 'dart:ui';

import 'package:flutter/material.dart';

import 'common.dart';

class AppConsts {
  static double heightSize = 0;
  static double widthSize = 0;

  static double heightPercentage = 100;
  static double widthPercentage = 140;

  static const double xdHeightSize = 667.0;
  static const double xdWidhtSize = 375.0;

  static void setHeightSize(double size) {
    heightSize = size;
    heightPercentage = heightSize / xdHeightSize;
  }

  static void setWidhtSize(double size) {
    widthSize = size;
    widthPercentage = widthSize / xdWidhtSize;
  }

  static double radiusBotton = 50;

  // Back Ground Colors

  static Color backgroundColor = const Color(0xff484848);
  static Color appbarBackgroundColor = const Color(0xff7b6cf6);

  // Cores básicas

  static Color redBasic = const Color(0xffcf0305);
  static Color yellowBasic = const Color(0xffffff00);
  static Color greenBasic = const Color(0xff00ff00);
  static Color borderColor = Colors.black26;
  static Color black = const Color(0xff000000);

  // ON/OFF
  static Color onColor = const Color(0xff7b6cf6);
  static Color offColor = const Color(0xff484848);
  static Color onBottom = const Color(0xff000000);
  static Color offBottom = const Color(0xffffdddd);
  static Color onText = const Color(0xff000000);
  static Color offText = const Color(0xffffffdd);

  static double fontSize08 = setWidth(8.0);
  static double fontSize09 = setWidth(9.0);
  static double fontSize10 = setWidth(10.0);
  static double fontSize12 = setWidth(12.0);
  static double fontSize16 = setWidth(16.0);
  static double fontSize18 = setWidth(18.0);
  static double fontSize24 = setWidth(24.0);

  static TextStyle styleTitle = TextStyle(
      //color: AppConsts.onText,
      fontWeight: FontWeight.w600,
      fontSize: AppConsts.fontSize24);

  static TextStyle textLabel = TextStyle(
    color: Colors.black,
    fontSize: AppConsts.fontSize12,
    height: 1.5,
  );
}
