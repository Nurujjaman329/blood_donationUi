import 'package:firstapp/utils/color_static.dart';
import 'package:flutter/material.dart';

class GenderDropDown extends StatefulWidget {
  const GenderDropDown({super.key});

  @override
  State<GenderDropDown> createState() => _GenderDropDownState();
}

class _GenderDropDownState extends State<GenderDropDown> {
  @override
  Widget build(BuildContext context) {
    String? gender;

    final item4 = ["Male", "Female", "Others"];
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
              hint: const Text("Select Gender"),
              value: gender,
              onChanged: (newvalue) {
                setState(() {
                  gender = newvalue;
                });
              },
              items: item4.map((valueItem) {
                return DropdownMenuItem(
                    value: valueItem, child: Text(valueItem));
              }).toList()),
        ),
      ),
    );
  }
}
