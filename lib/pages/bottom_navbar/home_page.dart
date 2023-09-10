import 'package:firstapp/drawerpage/drawer_page.dart';
import 'package:firstapp/pages/bottom_navbar/patient_req/patient_req.dart';
import 'package:firstapp/pages/mainpage_button/find_donorpage.dart';
import 'package:firstapp/pages/mainpage_button/top_donors.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: ColorCode.background_color,
        ),
        backgroundColor: ColorCode.primary_color,
        title: Row(
          children: [
            CircleAvatar(child: Image.asset("assets/images/mainpageimage.jpg")),
            Text(
              " Scouts Blood Donation\n  Bangladesh Scouts",
              style: Style.extrasmallerw17,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_outlined,
              size: 35,
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      body: Column(
        /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FindDonorPage()));
                  },
                  child: Container(
                    height: 200,
                    width: 100,
                    child: Image.asset(
                      "assets/images/donors.jpg",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PatientReq()));
                  },
                  child: Container(
                    height: 200,
                    width: 100,
                    child: Image.asset("assets/images/req.jpg"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopDonor()));
                  },
                  child: Container(
                    height: 200,
                    width: 100,
                    child: Image.asset("assets/images/top.jpg"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 400,
            child: Image.asset("assets/images/banner.jpg"),
          ),
        ],
      ),
    );
  }
}
