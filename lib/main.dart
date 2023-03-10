import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpanda/constants/color_const.dart';
import 'package:foodpanda/views/screens/fooddelivery_screen.dart';
import 'package:foodpanda/views/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: pink));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        scaffoldBackgroundColor: white,
        appBarTheme: const AppBarTheme(
          backgroundColor: white,
          elevation: 0,
        ),
        primaryColor: pink,
      ),
      home: const SplashScreen(),
      // home: const FoodDeliveryScreen(),
      // home: const PopularDishScreen(),
      // home:  HomeScreen(),
    );
  }
}
