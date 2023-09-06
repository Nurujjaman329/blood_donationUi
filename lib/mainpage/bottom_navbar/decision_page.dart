import 'package:firstapp/mainpage/bottom_navbar/decision_tabbar/accepted_page.dart';
import 'package:firstapp/mainpage/bottom_navbar/decision_tabbar/pending_page.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/text_style.dart';
import 'package:flutter/material.dart';

class DecisionPage extends StatefulWidget {
  const DecisionPage({super.key});

  @override
  State<DecisionPage> createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Icon(
              Icons.notification_add_rounded,
              color: ColorCode.appbar_back,
              size: 40,
            )
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Pending||Accepted", style: Styles.average),
            ),
            Tab(
              child: Text("Accepted", style: Styles.average),
            ),
          ]),
        ),
        body: TabBarView(children: [
          PendingPage(),
          AcceptedPage(),
        ]),
      ),
    );
  }
}
