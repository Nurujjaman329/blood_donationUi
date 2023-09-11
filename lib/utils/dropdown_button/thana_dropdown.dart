import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class ThanaDropDown extends StatefulWidget {
  const ThanaDropDown({super.key});

  @override
  State<ThanaDropDown> createState() => _ThanaDropDownState();
}

class _ThanaDropDownState extends State<ThanaDropDown> {
  String thana = "Moheshpur";

  List<String> items3 = [
    'Moheshpur',
    'Mohammadpur',
    'Chittagong',
    'Rajshahi',
    'Mymensing',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
