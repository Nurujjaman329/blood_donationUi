import 'package:firstapp/utils/text_style.dart';
import 'package:flutter/material.dart';

import '../../../../utils/color_static.dart';
import '../../../../utils/sized_box.dart';

class RequestHelper {
  Widget CardList(index, BuildContext context) {
    var wide = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(bottom: 5, right: 8, left: 8, top: 5),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: wide * 0.17,
                  child: CircleAvatar(
                    backgroundColor: ColorCode.appbar_back,
                    radius: 30,
                  ),
                ),
                Sizedmodifys.widet_distance_5,
                SizedBox(
                  width: wide * 0.62,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: wide * 0.21, child: Text("Receiver Name")),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.36,
                              child: Text(
                                "Md Nurujjaman",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(width: wide * 0.20, child: Text("Phone")),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.35,
                              child: Text(
                                "01957073942",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(width: wide * 0.20, child: Text("Email")),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.35,
                              child: Text(
                                "mdnurujjaman329@gmail.com",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(width: wide * 0.20, child: Text("Gender")),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.35,
                              child: Text(
                                "Male",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: wide * 0.20, child: Text("Birth Day")),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.35,
                              child: Text(
                                "21/09/1999",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: wide * 0.21,
                            child: Text("Description"),
                          ),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.35,
                              child: Text(
                                "Good",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          SizedBox(width: wide * 0.20, child: Text("Reason")),
                          Text(": "),
                          SizedBox(
                            width: wide * 0.35,
                            child: Text(
                              "Due to injury",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: wide * 0.08,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("A+", style: Styles.large2),
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.call,
                        size: 25,
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
                  child: Text("Pending"),
                ),
                SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Accept"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
