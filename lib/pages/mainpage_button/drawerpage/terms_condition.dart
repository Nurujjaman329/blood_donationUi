import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class TermsConditionPage extends StatelessWidget {
  const TermsConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorCode.primary_color,
        iconTheme: IconThemeData(
          color: ColorCode.background_color,
        ),
        title: Text(
          " Terms & Conditions  ",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_outlined,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
