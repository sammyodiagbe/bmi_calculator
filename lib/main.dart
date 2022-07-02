// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/bmi.dart';
import 'package:bmi_calculator/resultScreen.dart';
import "package:flutter/material.dart";

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pink),
          ),
        ),
        sliderTheme: SliderThemeData(
            thumbColor: Colors.pink,
            activeTrackColor: Colors.pink,
            trackHeight: 4,
            inactiveTrackColor: Colors.grey),
      ),
      routes: {
        '/': (context) => BMI(),
      },
    );
  }
}
