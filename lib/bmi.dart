import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const defaultBackgroundColor = Color.fromARGB(255, 54, 58, 59);
const textTitleStyle = TextStyle(
  fontSize: 16,
  color: Colors.grey,
);

const numbersTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const subTextStyle = TextStyle(
  fontSize: 14,
  color: Colors.grey,
);

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => BMIState();
}

class BMIState extends State<BMI> {
  int _currentSliderValue = 120;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: defaultBackgroundColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 60,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: defaultBackgroundColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 60,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    // child: Align(
                    //   alignment: Alignment.center,
                    //   child: Slider(
                    //     value: _currentSliderValue,
                    //     min: 0,
                    //     max: 100,
                    //     thumbColor: Colors.pink,
                    //     activeColor: Colors.pink,
                    //     inactiveColor: Colors.grey,
                    //     onChanged: (double value) {
                    //       setState(() {
                    //         _currentSliderValue = value;
                    //       });
                    //     },
                    //   ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: textTitleStyle,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _currentSliderValue.toString(),
                              style: numbersTextStyle,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'cm',
                              style: subTextStyle,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Slider(
                          value: _currentSliderValue.toDouble(),
                          min: 120,
                          max: 220,
                          thumbColor: Colors.pink,
                          activeColor: Colors.pink,
                          inactiveColor: Colors.grey,
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value.round();
                            });
                          },
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: defaultBackgroundColor,
                    )),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('HEIGHT'),
                            SizedBox(height: 10),
                            Text('20'),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    fixedSize: Size(50, 50),
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: null,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: defaultBackgroundColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: defaultBackgroundColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
