import 'package:firstapp/pages/mainpage_button/custom_donor/top_donor_custom.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopDonor extends StatefulWidget {
  const TopDonor({super.key});

  @override
  State<TopDonor> createState() => _TopDonorState();
}

class _TopDonorState extends State<TopDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Top Donor",
          style: TextStyles.app_bar,
        ),
        actions: [Icon(Icons.ring_volume_rounded)],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return TopDonorCustom().CardList(index, context);
          }),
    );
  }
}
