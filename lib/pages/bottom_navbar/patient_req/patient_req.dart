import 'package:firstapp/pages/bottom_navbar/request/helper/helper_pending.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientReq extends StatefulWidget {
  const PatientReq({super.key});

  @override
  State<PatientReq> createState() => _PatientReqState();
}

class _PatientReqState extends State<PatientReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Patient Request",
          style: TextStyles.app_bar,
        ),
        actions: [Icon(Icons.ring_volume_rounded)],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return RequestHelper().CardList(index, context);
          }),
    );
  }
}
