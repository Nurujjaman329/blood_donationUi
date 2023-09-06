import 'package:firstapp/drawerpage/dialog_page.dart';

import 'package:firstapp/registerpage/login_page.dart';
import 'package:firstapp/registerpage/phone_verification.dart';
import 'package:firstapp/registerpage/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
