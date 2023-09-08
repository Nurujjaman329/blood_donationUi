import 'package:firstapp/utils/color_static.dart';

import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyles.app_bar,
        ),
        actions: [Icon(Icons.notification_add_rounded)],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notification",
                  style: TextStyles.app_bar,
                ),
                Card(
                  // elevation: 30,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("App Notification"),
                        CupertinoSwitch(
                            value: _switch,
                            onChanged: (value) {
                              setState(() {
                                _switch = value;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Account Information ",
                  style: TextStyles.app_bar,
                ),
                Card(
                  // elevation: 30,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: SizedBox(
                    height: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Name                      : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Email                       : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Phone no                : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Blood Group           : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Gender                    : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Account Information ",
                  style: TextStyles.app_bar,
                ),
                Card(
                  // elevation: 30,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: SizedBox(
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Divison                       : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("District                       : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Thana                         : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                        Text("Address                     : null"),
                        Divider(
                          color: ColorCode.text_color,
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
