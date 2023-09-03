import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(child: Image.asset("assets/images/mainpageimage.jpg")),
            Text(
              "Scouts Blood Donation",
              style: TextStyles.app_bar,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_outlined,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
