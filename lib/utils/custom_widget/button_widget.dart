import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

Widget custom_button(String text) {
  return Container(
    alignment: Alignment.center,
    height: 35,
    width: 60,
    child: Text(
      text,
      style: TextStyles.signOut,
    ),
    decoration: BoxDecoration(
      color: ColorCode.background_color,
      borderRadius: BorderRadius.circular(10.0),
      border: const Border(
        top: BorderSide(
            width: 1,
            color: ColorCode.text_color,
            style: BorderStyle.solid), //BorderSide
        bottom: BorderSide(
            width: 1,
            color: ColorCode.text_color,
            style: BorderStyle.solid), //BorderSide
        left: BorderSide(
            width: 1,
            color: ColorCode.text_color,
            style: BorderStyle.solid), //Borderside
        right: BorderSide(
            width: 1, color: ColorCode.text_color, style: BorderStyle.solid), //
      ),
    ),
  );
}
