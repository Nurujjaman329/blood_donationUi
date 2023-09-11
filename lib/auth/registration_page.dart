import 'package:firstapp/custom_widget/button_widget.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/dropdown_button/district_dropdown.dart';
import 'package:firstapp/utils/dropdown_button/divison_dropdown.dart';
import 'package:firstapp/utils/dropdown_button/thana_dropdown.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String divison = "Khulna";
  String district = "Jhenaidah";
  String thana = "Moheshpur";

  List<String> items1 = [
    'Khulna',
    'Dhaka',
    'Chittagong',
    'Rajshahi',
    'Mymensing',
  ];
  List<String> items2 = [
    'Jhenaidah',
    'Dhaka',
    'Chittagong',
    'Rajshahi',
    'Mymensing',
  ];
  List<String> items3 = [
    'Moheshpur',
    'Mohammadpur',
    'Chittagong',
    'Rajshahi',
    'Mymensing',
  ];

  // List of items in our dropdown menu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: ColorCode.primary_color,
        title: Text(
          "Registration",
          style: Style.extrasmallerw17,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorCode.primary_color),
                      borderRadius: BorderRadius.all(
                        Radius.circular(14.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorCode.primary_color)),
                    hintText: "Full Name ",
                    prefixIcon: Icon(
                      Icons.man,
                      color: ColorCode.primary_color,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                  left: 10,
                  right: 10,
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorCode.primary_color),
                      borderRadius: BorderRadius.all(
                        Radius.circular(14.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorCode.primary_color)),
                    hintText: "Email ",
                    prefixIcon: Icon(
                      Icons.email,
                      color: ColorCode.primary_color,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                  left: 10,
                  right: 10,
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorCode.primary_color,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(14.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorCode.primary_color,
                      ),
                    ),
                    hintText: "Password ",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: ColorCode.primary_color,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              const DivisonDropDown(),
              const DistrictDropDown(),
              const ThanaDropDown(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                  left: 10,
                  right: 10,
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorCode.primary_color,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(14.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorCode.primary_color,
                      ),
                    ),
                    hintText: "Address ",
                    prefixIcon: Icon(
                      Icons.location_city,
                      color: ColorCode.primary_color,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  "Select Blood Group",
                  style: Style.extrasmaller600w,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        custom_button("A+"),
                        const SizedBox(
                          width: 5,
                        ),
                        custom_button("A-"),
                        const SizedBox(
                          width: 5,
                        ),
                        custom_button("B+"),
                        const SizedBox(
                          width: 5,
                        ),
                        custom_button("B-"),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        custom_button("A+"),
                        const SizedBox(
                          width: 5,
                        ),
                        custom_button("A-"),
                        const SizedBox(
                          width: 5,
                        ),
                        custom_button("B+"),
                        const SizedBox(
                          width: 5,
                        ),
                        custom_button("B-"),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      height: 4,
                      color: ColorCode.text_color,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(child: custom_button("Search"))
            ],
          ),
        ),
      ),
    );
  }
}
