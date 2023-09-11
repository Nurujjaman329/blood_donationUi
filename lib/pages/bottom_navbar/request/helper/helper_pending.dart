import 'package:firstapp/utils/fontstyle.dart';
import 'package:flutter/material.dart';
import '../../../../utils/color_static.dart';

class RequestHelper {
  Widget CardList(index, BuildContext context) {
    var wide = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5, right: 8, left: 8, top: 5),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: wide * 0.15,
                  child: const CircleAvatar(
                    backgroundColor: ColorCode.primary_color,
                    radius: 30,
                  ),
                ),
                const Spacer(),
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
                          Text(
                            ": ",
                            style: Style.extrasmallerD14,
                          ),
                          SizedBox(
                              width: wide * 0.30,
                              child: const Text(
                                "Md Nurujjaman",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Phone",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(
                            ": ",
                            style: Style.extrasmallerD14,
                          ),
                          SizedBox(
                              width: wide * 0.30,
                              child: const Text(
                                "01957073942",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Email",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(
                            ": ",
                            style: Style.extrasmallerD14,
                          ),
                          SizedBox(
                              width: wide * 0.30,
                              child: const Text(
                                "mdnurujjaman329@gmail.com",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: wide * 0.27,
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
                              width: wide * 0.30,
                              child: const Text(
                                "Male",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Birth Day",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(
                            ": ",
                            style: Style.extrasmallerD14,
                          ),
                          SizedBox(
                              width: wide * 0.30,
                              child: const Text(
                                "21/09/1999",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: wide * 0.27,
                            child: Text(
                              "Description",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(
                            ": ",
                            style: Style.extrasmallerD14,
                          ),
                          SizedBox(
                              width: wide * 0.30,
                              child: const Text(
                                "Good",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: wide * 0.27,
                              child: Text(
                                "Reason",
                                style: Style.extrasmallerD14,
                              )),
                          Text(
                            ": ",
                            style: Style.extrasmallerD14,
                          ),
                          SizedBox(
                            width: wide * 0.30,
                            child: const Text(
                              "Due to injury",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
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
                      const SizedBox(
                        height: 15,
                      ),
                      const Icon(
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
                  child: const Text("Pending"),
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
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
