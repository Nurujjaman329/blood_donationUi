import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/text_style.dart';
import 'package:firstapp/utils/textstyle_static.dart';
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
                  height: 110,
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
                            "Receiver Name :",
                            style: Styles.maxaverage,
                          ),
                          Text(
                            "Phone Number :",
                            style: Styles.maxaverage,
                          ),
                          Text(
                            "Gender :",
                            style: Styles.maxaverage,
                          ),
                          Text(
                            "Reason :",
                            style: Styles.maxaverage,
                          ),
                          Text(
                            "Donated",
                            style: TextStyle(color: ColorCode.green),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          "null",
                          style: Styles.small,
                        ),
                        Icon(Icons.call)
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
