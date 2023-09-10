import 'package:firstapp/utils/fontstyle.dart';
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
                  width: wide * 0.15,
                  child: CircleAvatar(
                    backgroundColor: ColorCode.primary_color,
                    radius: 30,
                  ),
                ),
                Spacer(),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Receiver Name",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.30,
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
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Phone",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.30,
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
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Email",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.30,
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
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Gender",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.30,
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
                            width: wide * 0.27,
                            child: Text(
                              "Birth Day",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.30,
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
                            width: wide * 0.27,
                            child: Text(
                              "Description",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(": "),
                          SizedBox(
                              width: wide * 0.30,
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
                          SizedBox(
                              width: wide * 0.27,
                              child: Text(
                                "Reason",
                                style: Style.extrasmallerD14,
                              )),
                          Text(": "),
                          SizedBox(
                            width: wide * 0.30,
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
                  width: wide * 0.14,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  child: Text(
                    "Accept",
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
