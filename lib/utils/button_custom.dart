import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class buttonCustom {
  static final button = InkWell(
    onTap: () {},
    child: Container(
      width: 300,
      height: 50,
      alignment: Alignment.center,
      child: Text("Verify"),
      decoration: BoxDecoration(
          color: ColorCode.button_color,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    ),
  );
}
