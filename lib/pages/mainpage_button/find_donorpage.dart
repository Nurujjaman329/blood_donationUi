import 'package:firstapp/utils/custom_widget/button_widget.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/dropdown_button/blood_dropdown.dart';
import 'package:firstapp/utils/dropdown_button/district_dropdown.dart';
import 'package:firstapp/utils/dropdown_button/divison_dropdown.dart';
import 'package:firstapp/utils/dropdown_button/thana_dropdown.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindDonorPage extends StatefulWidget {
  const FindDonorPage({super.key});

  @override
  State<FindDonorPage> createState() => _FindDonorPageState();
}

class _FindDonorPageState extends State<FindDonorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorCode.primary_color,
        title: Text(
          "Find Donor",
          style: Style.extrasmallerw17,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_rounded,
              size: 35,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
                top: 8,
                left: 10,
                right: 10,
              ),
              child: Text(
                "Find Donor",
                style: Style.extrasmaller600w,
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BloodDropDown(),
                SizedBox(
                  height: 2,
                ),
                DivisonDropDown(),
                SizedBox(
                  height: 2,
                ),
                DistrictDropDown(),
                SizedBox(
                  height: 2,
                ),
                ThanaDropDown(),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 8, top: 8, left: 10, right: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .07,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: ColorCode.primary_color,
                      borderRadius: BorderRadius.all(Radius.circular(14.0))),
                  child: Text(
                    "Sign In",
                    style: Style.extrasmallerw17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
