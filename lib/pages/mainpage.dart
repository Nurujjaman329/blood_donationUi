import 'package:firstapp/pages/bottom_navbar/request/decision_page.dart';
import 'package:firstapp/pages/bottom_navbar/patient_req/patient_req.dart';
import 'package:firstapp/pages/bottom_navbar/home_page.dart';
import 'package:firstapp/pages/bottom_navbar/profile/profile_page.dart';
import 'package:firstapp/pages/bottom_navbar/timer_page/timer_page.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _pageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const DecisionPage(),
    const PatientReq(),
    const TimerPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color.fromARGB(255, 119, 115, 115),
        selectedItemColor: ColorCode.button_color,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
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
