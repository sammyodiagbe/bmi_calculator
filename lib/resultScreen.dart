import 'package:bmi_calculator/bmiBrain.dart';
import 'package:bmi_calculator/constants.dart';
import "package:flutter/material.dart";

BmiBrain brain = BmiBrain();

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Your result',
                style: defaultTitleTextStyle,
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        brain.getStatus().toUpperCase(),
                        style: weightTextStyle,
                      ),
                      Text(
                        brain.getBMI(),
                        style: resultTextScreenStyle,
                      ),
                      Text(
                        brain.getFeedback(),
                        style: feedbackTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  margin: EdgeInsets.symmetric(vertical: 30),
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
            onPressed: () {
              Navigator.pop(context);
            },
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
