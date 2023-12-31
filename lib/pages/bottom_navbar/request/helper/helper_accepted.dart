import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class RequestHelper1 {
  Widget CardList(index, BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 4,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 3, bottom: 8, top: 8),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: _width * .20,
                  child: const CircleAvatar(
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
                          child: const Text("Md Nurujjaman"),
                        ),
                      ],
                    ),
                    const SizedBox(
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
                          child: const Text("01957073942"),
                        ),
                      ],
                    ),
                    const SizedBox(
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
                          child: const Text("male"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: _width * .60,
                          child: const Text(
                            "Donated",
                            style: TextStyle(color: ColorCode.green),
                          ),
                        ),
                      ],
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
                      const SizedBox(
                        height: 15,
                      ),
                      const Icon(
                        Icons.call,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Claim"),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
