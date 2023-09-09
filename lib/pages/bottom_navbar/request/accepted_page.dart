import 'package:firstapp/pages/bottom_navbar/request/helper/helper_accepted.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcceptedPage extends StatefulWidget {
  const AcceptedPage({super.key});

  @override
  State<AcceptedPage> createState() => _AcceptedPageState();
}

class _AcceptedPageState extends State<AcceptedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return RequestHelper1().CardList(index, context);
          }),
    );
  }
}
