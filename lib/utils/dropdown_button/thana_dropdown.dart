import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class ThanaDropDown extends StatefulWidget {
  const ThanaDropDown({super.key});

  @override
  State<ThanaDropDown> createState() => _ThanaDropDownState();
}

class _ThanaDropDownState extends State<ThanaDropDown> {
  String? thana;

  final items3 = [
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
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(
            color: ColorCode.primary_color,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
            top: 8,
            left: 10,
            right: 10,
          ),
          child: DropdownButton(
              underline: const SizedBox(),
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 35,
              hint: const Text("Select Thana"),
              value: thana,
              onChanged: (newvalue) {
                setState(() {
                  thana = newvalue;
                });
              },
              items: items3.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList()),
        ),
      ),
    );
  }
}
