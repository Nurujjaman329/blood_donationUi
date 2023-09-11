import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class DivisonDropDown extends StatefulWidget {
  const DivisonDropDown({super.key});

  @override
  State<DivisonDropDown> createState() => _DivisonDropDownState();
}

class _DivisonDropDownState extends State<DivisonDropDown> {
  String divison = "Khulna";

  List<String> items1 = [
    'Khulna',
    'Dhaka',
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
    );
  }
}
