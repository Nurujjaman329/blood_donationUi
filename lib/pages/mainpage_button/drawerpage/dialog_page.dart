import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 2.4,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
        child: Column(children: [
          const Text(
            "Change Password",
            style: TextStyles.inside,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorCode.text_color),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                hintText: "Old Password ",
                prefixIcon: Icon(Icons.security_rounded),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorCode.text_color),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                hintText: "New Password ",
                prefixIcon: Icon(Icons.security_rounded),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorCode.text_color),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                hintText: "Re_Type Password ",
                prefixIcon: Icon(Icons.security_rounded),
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
                    "Cancel",
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
                    "save",
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
