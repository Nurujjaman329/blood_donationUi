import 'package:firstapp/drawerpage/privacy_security.dart';
import 'package:firstapp/drawerpage/terms_condition.dart';
import 'package:firstapp/drawerpage/user_feedback.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

import '../utils/color_static.dart';
import 'dialog_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          // scrollDirection: Axis.vertical,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: ColorCode.background_color,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: ColorCode.background_color,
                ),
                accountName: Text(
                  "Md Nurujjaman",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                accountEmail: Text(
                  "mdnurujjaman329@gmail.com",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: ColorCode.primary_color,
                  child: Text(
                    "N",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            const Divider(
              color: ColorCode.text_color,
              thickness: 3,
            ),
            ListTile(
              title: const Text('I Want To Donate '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Home Page"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(' Change Password '),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const Dialog(
                        child: DialogPage(),
                      );
                    });
              },
            ),
            ListTile(
              title: const Text(' User Feed Back '),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const Dialog(
                        child: UserFeedBack(),
                      );
                    });
              },
            ),
            ListTile(
              title: const Text(' Privacy & Security '),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacySecurityPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Terms & Condition'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsConditionPage(),
                  ),
                );
              },
            ),
            const Divider(
              color: ColorCode.text_color,
              thickness: 3,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              child: const Text(
                "SignOut",
                style: TextStyles.signOut,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: const Border(
                  top: BorderSide(
                      width: 1,
                      color: ColorCode.text_color,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 1,
                      color: ColorCode.text_color,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 1,
                      color: ColorCode.text_color,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 1,
                      color: ColorCode.text_color,
                      style: BorderStyle.solid), //
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
