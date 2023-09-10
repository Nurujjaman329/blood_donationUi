import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
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
        iconTheme: const IconThemeData(
          color: ColorCode.background_color,
        ),
        elevation: 0,
        backgroundColor: ColorCode.primary_color,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: ColorCode.background_color,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_rounded,
              color: ColorCode.background_color,
              size: 40,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "  Notification",
              style: Style.extrasmaller600w,
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("App Notification"),
                    ),
                    CupertinoSwitch(
                        activeColor: ColorCode.primary_color,
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
            const SizedBox(
              height: 15,
            ),
            Text(
              "  Account Information ",
              style: Style.extrasmaller600w,
            ),
            const Padding(
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
                      padding: EdgeInsets.all(2.0),
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
            const SizedBox(
              height: 15,
            ),
            Text(
              "  Account Information ",
              style: Style.extrasmaller600w,
            ),
            const Padding(
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
