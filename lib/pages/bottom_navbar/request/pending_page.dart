import 'package:firstapp/pages/bottom_navbar/request/helper/helper_pending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PendingPage extends StatefulWidget {
  const PendingPage({super.key});

  @override
  State<PendingPage> createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          bottom: 0,
          right: 8,
          left: 8,
        ),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return RequestHelper().CardList(index, context);
            }),
      ),
    );
  }
}
