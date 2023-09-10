import 'package:firstapp/pages/bottom_navbar/request/helper/helper_pending.dart';
import 'package:firstapp/utils/color_static.dart';
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
        iconTheme: const IconThemeData(
          color: ColorCode.background_color,
        ),
        elevation: 0,
        backgroundColor: ColorCode.primary_color,
        title: const Text(
          "Patient Request",
          style: TextStyle(
            color: ColorCode.background_color,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.ring_volume_rounded),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return RequestHelper().CardList(index, context);
          }),
    );
  }
}
