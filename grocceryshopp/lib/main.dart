// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocceryshopp/screen/home/Homepage.dart';
import 'package:grocceryshopp/screen/welcome/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}