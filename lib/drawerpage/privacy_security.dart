import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class PrivacySecurityPage extends StatelessWidget {
  const PrivacySecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorCode.appbar_color1),
        title: Text("Privacy & Security "),
      ),
    );
  }
}
