import 'package:firstapp/utils/fontstyle.dart';
import 'package:firstapp/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopDonorCustom {
  Widget CardList(index, BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 7,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 3, bottom: 8, top: 8),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: _width * .20,
                  child: CircleAvatar(
                    radius: 30,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: _width * .27,
                          child: Text("Top Donor Name"),
                        ),
                        Text(": "),
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
                          child: Text("Phone Number"),
                        ),
                        Text(": "),
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
                          child: Text("Gender"),
                        ),
                        Text(": "),
                        SizedBox(
                          width: _width * .31,
                          child: Text("male"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: _width * .16,
                  child: Column(
                    children: [
                      Text(
                        "A+",
                        style: Style.average,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.call,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
