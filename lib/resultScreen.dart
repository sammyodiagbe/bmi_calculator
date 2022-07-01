import 'package:bmi_calculator/constants.dart';
import "package:flutter/material.dart";

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your BMI.'),
            SizedBox(height: 15),
            Text(
              '100',
              style: heightAndAgeTextStyle,
            ),
          ],
        )),
      ),
    );
  }
}
