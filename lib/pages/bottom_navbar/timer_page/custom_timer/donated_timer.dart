import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerCard {
  Widget ListCard(index, BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 7,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 5, bottom: 5, top: 5),
        child: Row(
          children: [
            SizedBox(
              width: _width * .20,
              child: CircleAvatar(
                backgroundColor: ColorCode.primary_color,
                radius: 30,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: _width * .27,
                      child: Text(
                        "Receiver Name",
                        style: Style.extrasmallerD14,
                      ),
                    ),
                    Text(
                      ": ",
                      style: Style.extrasmallerD14,
                    ),
                    SizedBox(
                      width: _width * .31,
                      child: Text("Md Nurujjaman"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width * .27,
                      child: Text(
                        "Phone Number",
                        style: Style.extrasmallerD14,
                      ),
                    ),
                    Text(
                      ": ",
                      style: Style.extrasmallerD14,
                    ),
                    SizedBox(
                      width: _width * .31,
                      child: Text("01957073942"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width * .27,
                      child: Text(
                        "Gender",
                        style: Style.extrasmallerD14,
                      ),
                    ),
                    Text(
                      ": ",
                      style: Style.extrasmallerD14,
                    ),
                    SizedBox(
                      width: _width * .31,
                      child: Text("male"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: _width * .60,
                      child: Text(
                        "Donated",
                        style: TextStyle(color: ColorCode.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: _width * .10,
                  child: Icon(Icons.call),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
