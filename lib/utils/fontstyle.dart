import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/cupertino.dart';

class Style {
  static TextStyle extrasmallertext400w = const TextStyle(
      fontSize: 8,
      color: ColorCode.text_color,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400);
  static TextStyle extrasmaller500w = const TextStyle(
      fontSize: 8,
      color: ColorCode.text_color,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400);
  static TextStyle extrasmaller600w = const TextStyle(
    fontSize: 17,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold,
  );

  static TextStyle extrasmaller700w = const TextStyle(
      fontSize: 17,
      color: ColorCode.background_color,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500);

  static TextStyle average = const TextStyle(
      fontSize: 17,
      color: ColorCode.primary_color,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500);
}
