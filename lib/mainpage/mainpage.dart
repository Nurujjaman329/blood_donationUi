import 'package:firstapp/drawerpage/dialog_page.dart';
import 'package:firstapp/drawerpage/privacy_security.dart';
import 'package:firstapp/drawerpage/terms_condition.dart';
import 'package:firstapp/drawerpage/user_feedback.dart';
import 'package:firstapp/mainpage/bottom_navbar/decision_page.dart';
import 'package:firstapp/mainpage/bottom_navbar/comment_page.dart';
import 'package:firstapp/mainpage/bottom_navbar/profile_page.dart';
import 'package:firstapp/mainpage/bottom_navbar/timer_page.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/mainpage/bottom_navbar/main_page.dart/bottom_navbar.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawerpage/drawer_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _pageIndex = 0;

  final List<Widget> _pages = [
    DecisionPage(),
    CommentPage(),
    TimerPage(),
    ProfilePage(),
  ];

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
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromARGB(255, 119, 115, 115),
        selectedItemColor: Colors.blue,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Decision',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Comment"),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Timer'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
