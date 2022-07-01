import 'package:bmi_calculator/constants.dart';
import "package:flutter/material.dart";

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Your result',
                style: defaultTitleTextStyle,
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: defaultBackgroundColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
              )
            ],
          ),
        )),

        // go back or re calculate button
        Container(
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Re-calculate',
              style: buttonTextStyle,
            ),
          ),
        )
      ])),
    );
  }
}
