import 'package:firstapp/pages/mainpage_button/custom_donor/top_donor_custom.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
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
        iconTheme: IconThemeData(
          color: ColorCode.background_color,
        ),
        elevation: 0,
        backgroundColor: ColorCode.primary_color,
        title: Text(
          "Top Donor",
          style: Style.extrasmallerw17,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.ring_volume_rounded),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return TopDonorCustom().CardList(index, context);
          }),
    );
  }
}
