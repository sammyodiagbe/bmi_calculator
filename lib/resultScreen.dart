import 'package:bmi_calculator/bmiBrain.dart';
import 'package:bmi_calculator/constants.dart';
import "package:flutter/material.dart";

BmiBrain brain = BmiBrain();

class ResultScreen extends StatelessWidget {
  final String feedback;
  final String status;
  final String bmi;
  const ResultScreen(
      {required this.bmi, required this.status, required this.feedback});
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
                        status.toUpperCase(),
                        style: weightTextStyle,
                      ),
                      Text(
                        bmi,
                        style: resultTextScreenStyle,
                      ),
                      Text(
                        feedback,
                        textAlign: TextAlign.center,
                        style: feedbackTextStyle,
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
