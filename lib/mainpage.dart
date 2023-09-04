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
                color: ColorCode.drawer_header,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: ColorCode.drawer_header),
                accountName: Text(
                  "Md Nurujjaman",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("mdnurujjaman329@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: ColorCode.drawer_border,
                  //child: Text(
                  //  "N",
                  //  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  //),
                ),
              ),
            ),
            ListTile(
              title: Text('I Want To Donate '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(' Home Page '),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(' Change Password '),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                AlertDialog(
                  title: Text('Welcome'), // To display the title it is optional
                  content: Text(
                      'GeeksforGeeks'), // Message which will be pop up on the screen
                  // Action widget which will provide the user to acknowledge the choice
                  actions: [
                    TextButton(
                      // FlatButton widget is used to make a text to work like a button

                      onPressed:
                          () {}, // function used to perform after pressing the button
                      child: Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('ACCEPT'),
                    ),
                  ],
                );
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Terms & Condition'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: MediaQuery.of(context).size.height * .003,
              decoration: BoxDecoration(
                color: ColorCode.drawer_border,
                border: Border(
                  bottom: Divider.createBorderSide(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
