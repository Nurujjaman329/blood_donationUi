import 'package:firstapp/utils/color_static.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
              child: DropdownButtonFormField<String>(
                value: divison,
                onChanged: (newValue) {
                  setState(() {
                    divison = newValue!;
                  });
                },
                items: items1.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
                top: 8,
                left: 10,
                right: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: district,
                onChanged: (newValue) {
                  setState(() {
                    district = newValue!;
                  });
                },
                items: items2.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
                top: 8,
                left: 10,
                right: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: thana,
                onChanged: (newValue) {
                  setState(() {
                    thana = newValue!;
                  });
                },
                items: items3.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
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
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
