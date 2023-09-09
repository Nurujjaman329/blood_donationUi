//import 'package:firstapp/mainpage/bottom_navbar/accepted.dart';
//import 'package:firstapp/mainpage/bottom_navbar/comment_page.dart';
//import 'package:firstapp/mainpage/bottom_navbar/profile_page.dart';
//import 'package:firstapp/mainpage/bottom_navbar/timer_page.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';

//class BottomNavBar extends StatefulWidget {
//  const BottomNavBar({super.key});

//  @override
//  State<BottomNavBar> createState() => _BottomNavBarState();
//}

//class _BottomNavBarState extends State<BottomNavBar> {
//  var _pageIndex = 0;

//  List<Widget> _pages = [
//    DecisionPage(),
//    CommentPage(),
//    TimerPage(),
//    ProfilePage(),
//  ];

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: BottomNavigationBar(
//        type: BottomNavigationBarType.fixed,
//        unselectedItemColor: Color.fromARGB(255, 119, 115, 115),
//        selectedItemColor: Colors.blue,
//        currentIndex: _pageIndex,
//        onTap: (value) {
//          setState(() {
//            _pageIndex = value;
//          });
//        },
//        items: const [
//          BottomNavigationBarItem(
//            icon: Icon(CupertinoIcons.cube_box),
//            label: 'Decision',
//          ),
//          BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Comment"),
//          BottomNavigationBarItem(
//              icon: Icon(CupertinoIcons.timer), label: 'Timer'),
//          BottomNavigationBarItem(
//              icon: Icon(CupertinoIcons.person_crop_circle_fill),
//              label: "Profile"),
//        ],
//      ),
//       _pages[_pageIndex],
//    );
     
//  }
//}
