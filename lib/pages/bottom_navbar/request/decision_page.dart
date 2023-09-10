import 'package:firstapp/pages/bottom_navbar/request/accepted_page.dart';
import 'package:firstapp/pages/bottom_navbar/request/pending_page.dart';
import 'package:firstapp/utils/color_static.dart';
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
          backgroundColor: ColorCode.primary_color,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notification_add_rounded,
                color: ColorCode.white,
                size: 40,
              ),
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                "Pending||Accepted",
                style: TextStyle(
                  color: ColorCode.white,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Accepted",
                style: TextStyle(
                  color: ColorCode.white,
                ),
              ),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          PendingPage(),
          AcceptedPage(),
        ]),
      ),
    );
  }
}
