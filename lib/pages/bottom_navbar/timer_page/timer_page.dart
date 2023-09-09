import 'package:firstapp/pages/bottom_navbar/timer_page/donated_page.dart';
import 'package:firstapp/pages/bottom_navbar/timer_page/received_page.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/text_style.dart';
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
          backgroundColor: Colors.white,
          elevation: 0,
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
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Donated", style: Styles.average),
            ),
            Tab(
              child: Text("Received", style: Styles.average),
            ),
          ]),
        ),
        body: TabBarView(children: [
          DonatedPage(),
          ReceivedPage(),
        ]),
      ),
    );
  }
}