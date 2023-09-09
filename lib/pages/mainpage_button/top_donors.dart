import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/text_style.dart';
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
          "Patient Request",
          style: TextStyles.app_bar,
        ),
        actions: [Icon(Icons.ring_volume_rounded)],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(4.0),
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.man_2_rounded),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "{allDat[index\n]['name].tostr\ning()} :",
                            style: Styles.maxaverage,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    trailing: Column(
                      children: [
                        Icon(Icons.star, color: ColorCode.appbar_color2),
                        Text(
                          "{allDat[index]['name].tostring()} :",
                          style: Styles.extraextrasmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
