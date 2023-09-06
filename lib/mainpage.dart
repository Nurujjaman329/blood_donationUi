import 'package:firstapp/custom_widget/listtile_widget.dart';
import 'package:firstapp/drawerpage/privacy_security.dart';
import 'package:firstapp/drawerpage/terms_condition.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.red,
        title: Row(
          children: [
            CircleAvatar(child: Image.asset("assets/images/mainpageimage.jpg")),
            Text(
              "Scouts Blood Donation\n   Bangladesh Scouts",
              style: TextStyles.app_bar,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_outlined,
              size: 35,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorCode.white,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: ColorCode.white),
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
                  backgroundColor: ColorCode.drawer_border,
                  child: Text(
                    "N",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(
              color: ColorCode.drawer_border,
              thickness: 3,
            ),
            ListTile(
              title: Text('I Want To Donate '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            custom_listtile(
              "Home Page",
            ),
            ListTile(
              title: const Text(' Change Password '),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                //showDialog(
                //    context: context,
                //    builder: (context) {
                //      return Dialog(
                //        child: ,
                //      );
                //    });
              },
            ),
            ListTile(
              title: const Text(' User Feed Back '),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(' Privacy & Security '),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacySecurityPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Terms & Condition'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsConditionPage(),
                  ),
                );
              },
            ),
            Divider(
              color: ColorCode.drawer_border,
              thickness: 3,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              //alignment: Alignment.center,
              height: 101,
              width: 10,
              decoration: BoxDecoration(
                  color: ColorCode.text_color,
                  borderRadius: BorderRadius.circular(10.0)),
              //child: Text(
              //  "SignOut",
              //  style: TextStyles.signOut,
              //),
            ),
          ],
        ),
      ),
    );
  }
}
