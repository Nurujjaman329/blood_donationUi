import 'package:flutter/material.dart';

class DecisionPage extends StatefulWidget {
  const DecisionPage({super.key});

  @override
  State<DecisionPage> createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notification_add_rounded),
        bottom: TabBar(tabs: [
          Tab(
            child: Text("Oending||Accepted"),
          ),
          Tab(
            child: Text("Accepted"),
          ),
        ]),
      ),
      body: TabBarView(children: []),
    );
  }
}
