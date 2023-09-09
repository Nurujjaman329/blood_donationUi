import 'package:firstapp/pages/bottom_navbar/timer_page/custom_timer/received_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceivedPage extends StatefulWidget {
  const ReceivedPage({super.key});

  @override
  State<ReceivedPage> createState() => _ReceivedPageState();
}

class _ReceivedPageState extends State<ReceivedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return TimerCard1().CardList(index, context);
          }),
    );
  }
}
