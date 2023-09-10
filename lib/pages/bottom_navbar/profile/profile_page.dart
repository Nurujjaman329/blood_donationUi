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
    var _width = MediaQuery.of(context).size.width;
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
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Text(
                        "App Notification",
                        style: Style.extrasmallerD14,
                      ),
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
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .20,
                            child: Text(
                              "Name",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "Md Nurujjaman",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .20,
                            child: Text(
                              "Email",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "mdnurujjaman329@gmail.com",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .20,
                            child: Text(
                              "Phone no",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "01957073942",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .22,
                            child: Text(
                              "Blood Group",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "B+",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .22,
                            child: Text(
                              "Gender",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "male",
                            ),
                          ),
                        ],
                      ),
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
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .22,
                            child: Text(
                              "Divison",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "Khulna",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .22,
                            child: Text(
                              "District",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "Jhenaidah",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .22,
                            child: Text(
                              "Thana",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "Moheshpur",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: ColorCode.text_color,
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: _width * .22,
                            child: Text(
                              "Address",
                              style: Style.extrasmallerD14,
                            ),
                          ),
                          Text(" : "),
                          SizedBox(
                            width: _width * .60,
                            child: Text(
                              "Swaruppur",
                            ),
                          ),
                        ],
                      ),
                    ),
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
    );
  }
}
