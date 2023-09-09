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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_rounded,
              color: ColorCode.appbar_back,
              size: 40,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "  Notification",
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
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("App Notification"),
                    ),
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
              "  Account Information ",
              style: TextStyles.app_bar,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Card(
                // elevation: 30,
                shadowColor: Colors.black,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("Name                      : Md Nurujjaman"),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                          "Email                       : mdnurujjaman329@gmail.com"),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("Phone no                : 01957073942"),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("Blood Group           : B+"),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("Gender                    : male"),
                    ),
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
              "  Account Information ",
              style: TextStyles.app_bar,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Card(
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
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Divison                       : Khulna"),
                      ),
                      Divider(
                        color: ColorCode.text_color,
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child:
                            Text("District                       : Jhenaidah"),
                      ),
                      Divider(
                        color: ColorCode.text_color,
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child:
                            Text("Thana                         : Moheshpur"),
                      ),
                      Divider(
                        color: ColorCode.text_color,
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("Address                     : Swaruppur"),
                      ),
                      Divider(
                        color: ColorCode.text_color,
                        height: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
