import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/text_style.dart';
import 'package:firstapp/utils/textstyle_static.dart';
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
            return Padding(
              padding: EdgeInsets.all(4.0),
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  height: 120,
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
                            "Sender Name :",
                            style: Styles.maxaverage,
                          ),
                          Text(
                            "Sender Phone :",
                            style: Styles.maxaverage,
                          ),
                          Text(
                            "Description :",
                            style: Styles.maxaverage,
                          ),
                          Text(
                            "Reason :",
                            style: Styles.maxaverage,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 60,
                                child: Text(
                                  "Ring",
                                  style: TextStyles.signOut,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorCode.card_button,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: const Border(
                                    top: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //BorderSide
                                    bottom: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //BorderSide
                                    left: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //Borderside
                                    right: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 60,
                                child: Text(
                                  "Cancel",
                                  style: TextStyles.signOut,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorCode.card_button,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: const Border(
                                    top: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //BorderSide
                                    bottom: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //BorderSide
                                    left: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //Borderside
                                    right: BorderSide(
                                        width: 1,
                                        color: ColorCode.text_color,
                                        style: BorderStyle.solid), //
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              GestureDetector(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 60,
                                  child: Text(
                                    "Success",
                                    style: TextStyles.signOut,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorCode.card_button,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: const Border(
                                      top: BorderSide(
                                          width: 1,
                                          color: ColorCode.text_color,
                                          style:
                                              BorderStyle.solid), //BorderSide
                                      bottom: BorderSide(
                                          width: 1,
                                          color: ColorCode.text_color,
                                          style:
                                              BorderStyle.solid), //BorderSide
                                      left: BorderSide(
                                          width: 1,
                                          color: ColorCode.text_color,
                                          style:
                                              BorderStyle.solid), //Borderside
                                      right: BorderSide(
                                          width: 1,
                                          color: ColorCode.text_color,
                                          style: BorderStyle.solid), //
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
