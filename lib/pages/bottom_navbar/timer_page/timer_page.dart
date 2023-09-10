import 'package:firstapp/pages/bottom_navbar/timer_page/donated_page.dart';
import 'package:firstapp/pages/bottom_navbar/timer_page/received_page.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorCode.primary_color,
          elevation: 0,
          title: const Text("Timer"),
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
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                "Donated",
                style: TextStyle(
                  color: ColorCode.background_color,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Received",
                style: TextStyle(
                  color: ColorCode.background_color,
                ),
              ),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          DonatedPage(),
          ReceivedPage(),
        ]),
      ),
    );
  }
}
