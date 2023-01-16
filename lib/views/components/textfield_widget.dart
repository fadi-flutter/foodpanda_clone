import 'package:flutter/material.dart';

import '../../constants/color_const.dart';

Widget textFieldWidget(context) {
  final sizew = MediaQuery.of(context).size.width * 1;
  final sizeh = MediaQuery.of(context).size.height * 1;
  return Container(
    padding: EdgeInsets.symmetric(vertical: sizeh * 0.0020),
    width: sizew * 0.92,
    height: sizeh * 0.060,
    child: TextField(
      style: TextStyle(fontSize: sizew * 0.040),
      cursorColor: pink,
      decoration: InputDecoration(
        labelText: 'Search for shops & restaurants',
        labelStyle: TextStyle(fontSize: sizew * 0.04, color: grey),
        filled: true,
        prefixIcon: const Icon(
          Icons.search,
          color: grey,
        ),
        fillColor: lightGrey,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            style: BorderStyle.solid,
            color: white,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: pink, width: 2),
        ),
      ),
    ),
  );
}
