import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class DistrictDropDown extends StatefulWidget {
  const DistrictDropDown({super.key});

  @override
  State<DistrictDropDown> createState() => _DistrictDropDownState();
}

class _DistrictDropDownState extends State<DistrictDropDown> {
  String district = "Jhenaidah";

  List<String> items2 = [
    'Jhenaidah',
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
    );
  }
}
