import 'package:firstapp/utils/fontstyle.dart';
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
        padding: const EdgeInsets.only(left: 3, bottom: 8, top: 8),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: _width * .20,
                  child: const CircleAvatar(
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
                          child: const Text("Top Donor Name"),
                        ),
                        const Text(": "),
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
                          child: const Text("Phone Number"),
                        ),
                        const Text(": "),
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
                          child: const Text("Gender"),
                        ),
                        const Text(": "),
                        SizedBox(
                          width: _width * .31,
                          child: const Text("male"),
                        ),
                      ],
                    ),
                    const SizedBox(
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
          ],
        ),
      ),
    );
  }
}
