import 'package:bmi_calculator/bmi.dart';
import "package:flutter/material.dart";

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: BMI(),
    );
  }
}
