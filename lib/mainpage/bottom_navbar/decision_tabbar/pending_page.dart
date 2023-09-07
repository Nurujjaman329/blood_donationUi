import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/text_style.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PendingPage extends StatefulWidget {
  const PendingPage({super.key});

  @override
  State<PendingPage> createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
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
                  height: 200,
                  width: double.infinity,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.man_2_rounded),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Receiver Name :"),
                        Text("Phone no :"),
                        Text("Email :"),
                        Text("Gender :"),
                        Text("Birth day :"),
                        Text("Description :"),
                        Text("Reason :"),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              child: Text(
                                "Ring",
                                style: TextStyles.signOut,
                              ),
                              decoration: BoxDecoration(
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
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              child: Text(
                                "Cancel",
                                style: TextStyles.signOut,
                              ),
                              decoration: BoxDecoration(
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
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              child: Text(
                                "Success",
                                style: TextStyles.signOut,
                              ),
                              decoration: BoxDecoration(
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
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          "A",
                          style: Styles.small,
                        ),
                        Icon(Icons.call)
                      ],
                    ),

                    // Container(
                    //  height: 50,
                    //  width: 70,
                    //  decoration: BoxDecoration(
                    //    color: Colors.red,
                    //    shape: BoxShape.circle,
                    //  ),
                    //),
                  ),
                ),

                //SizedBox(
                //  width: 300,
                //  height: 500,
                //  child: Padding(
                //    padding: const EdgeInsets.all(20.0),
                //    child: Column(
                //      children: [
                //        CircleAvatar(
                //          backgroundColor: Colors.green[500],
                //          radius: 108,
                //          child: const CircleAvatar(
                //            backgroundImage: NetworkImage(
                //                "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                //            radius: 100,
                //          ), //CircleAvatar
                //        ), //CircleAvatar
                //        const SizedBox(
                //          height: 10,
                //        ), //SizedBox
                //        Text(
                //          'GeeksforGeeks',
                //          style: TextStyle(
                //            fontSize: 30,
                //            color: Colors.green[900],
                //            fontWeight: FontWeight.w500,
                //          ), //Textstyle
                //        ), //Text
                //        const SizedBox(
                //          height: 10,
                //        ), //SizedBox
                //        const Text(
                //          'Ok',
                //          style: TextStyle(
                //            fontSize: 15,
                //            color: Colors.green,
                //          ), //Textstyle
                //        ), //Text
                //        const SizedBox(
                //          height: 10,
                //        ), //SizedBox
                //        SizedBox(
                //          width: 100,
                //          child: ElevatedButton(
                //            onPressed: () => 'Null',
                //            style: ButtonStyle(
                //                backgroundColor:
                //                    MaterialStateProperty.all(Colors.green)),
                //            child: Padding(
                //              padding: const EdgeInsets.all(4),
                //              child: Row(
                //                children: const [
                //                  Icon(Icons.touch_app),
                //                  Text('Visit')
                //                ],
                //              ),
                //            ),
                //          ),
                //        )
                //      ],
                //    ),
                //  ),
                //),
              ),
            );
          }),
    );
  }
}
