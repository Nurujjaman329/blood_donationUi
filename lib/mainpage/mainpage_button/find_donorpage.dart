import 'package:firstapp/custom_widget/button_widget.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindDonorPage extends StatefulWidget {
  const FindDonorPage({super.key});

  @override
  State<FindDonorPage> createState() => _FindDonorPageState();
}

class _FindDonorPageState extends State<FindDonorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorCode.appbar_color2,
        title: Text(
          "Find Donor",
          style: TextStyles.app_bar,
        ),
        actions: [Icon(Icons.notification_add_rounded)],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select Blood Group"),
            ),
            Column(
              children: [
                Row(
                  children: [
                    custom_button("A+"),
                    SizedBox(
                      width: 5,
                    ),
                    custom_button("A-"),
                    SizedBox(
                      width: 5,
                    ),
                    custom_button("B+"),
                    SizedBox(
                      width: 5,
                    ),
                    custom_button("B-"),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    custom_button("A+"),
                    SizedBox(
                      width: 5,
                    ),
                    custom_button("A-"),
                    SizedBox(
                      width: 5,
                    ),
                    custom_button("B+"),
                    SizedBox(
                      width: 5,
                    ),
                    custom_button("B-"),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 4,
                  color: ColorCode.appbar_back,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 4,
                  color: ColorCode.appbar_back,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 4,
                  color: ColorCode.appbar_back,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(child: custom_button("Search"))
          ],
        ),
      ),
    );
  }
}
