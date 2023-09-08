import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

class UserFeedBack extends StatelessWidget {
  const UserFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: Column(children: [
          Text(
            "User Feed Back",
            style: TextStyles.inside,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorCode.text_color),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                hintText: "Comment ",
                prefixIcon: Icon(Icons.comment),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Close ",
                    style: TextStyles.app_bar,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Send",
                    style: TextStyles.app_bar,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
