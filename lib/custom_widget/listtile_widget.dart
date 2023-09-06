import 'package:flutter/material.dart';

Widget custom_listtile(String text) {
  return ListTile(
    title: Text(text),
    trailing: Icon(Icons.arrow_forward),
    //onTap: () {
    //  tap;
    //},
  );
}
