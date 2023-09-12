import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class BloodDropDown extends StatefulWidget {
  const BloodDropDown({super.key});

  @override
  State<BloodDropDown> createState() => _BloodDropDownState();
}

class _BloodDropDownState extends State<BloodDropDown> {
  String? blood;

  final items5 = ["A+", "A-", "B+", "B-", "O+", "0-", "AB+"];

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
              hint: const Text("Select Blood Group"),
              value: blood,
              onChanged: (newvalue) {
                setState(() {
                  blood = newvalue;
                });
              },
              items: items5.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList()),
        ),
      ),
    );
  }
}
