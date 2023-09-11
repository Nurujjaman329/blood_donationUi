import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

class UserFeedBack extends StatelessWidget {
  const UserFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(children: [
          const Text(
            "User Feed Back",
            style: TextStyles.inside,
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorCode.primary_color),
                    borderRadius: BorderRadius.all(Radius.circular(22.0))),
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
                  child: const Text(
                    "Close ",
                    style: TextStyles.app_bar,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
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
