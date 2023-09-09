import 'package:firstapp/pages/bottom_navbar/timer_page/custom_timer/donated_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonatedPage extends StatefulWidget {
  const DonatedPage({super.key});

  @override
  State<DonatedPage> createState() => _DonatedPageState();
}

class _DonatedPageState extends State<DonatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 10, top: 5, bottom: 8, left: 10),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return TimerCard().ListCard(index, context);
            }),
      ),
    );
  }
}
