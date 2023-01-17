import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodpanda/constants/color_const.dart';
import 'package:foodpanda/views/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
    return Container(
      color: pink,
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Image.asset(
          'assets/images/logo.png',
          color: white,
        ),
      ),
    );
  }
}
