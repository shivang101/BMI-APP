import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_to_git/Constants.dart';
import 'IconColumn.dart';
import 'ReusableCard.dart';
import 'dart:async';
import 'Plus_Minus_Icons.dart';
import 'BottomButton.dart';
import 'BmiBrain.dart';
import 'ThirdPage.dart';


enum newVarGender {
  male,
  female,
}

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  newVarGender selectedGender;
  int height = 180;
  int weight = 50;
  int age = 20;
  Timer timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: selectedGender == newVarGender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      iconColumn: IconContent(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                      tap: () {
                        setState(() {
                          selectedGender = newVarGender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: selectedGender == newVarGender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      iconColumn: IconContent(
                        text: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      ),
                      tap: () {
                        setState(() {
                          selectedGender = newVarGender.female;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                iconColumn: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "HEIGHT",
                      style: kInputPage,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kInputPageNumber,
                        ),
                        Text(
                          'Cm',
                          style: kInputPage,
                        )
                      ],
                    ),
                    Slider(
                      inactiveColor: Colors.white,
                      activeColor: Colors.purple,
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      iconColumn: Column(
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kInputPage,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kInputPageNumber,
                              ),
                              Text('KG')
                            ],
                          ),
                          RoundIcons(
                            longPress: (TapDownDetails details) {
                              timer = Timer.periodic(
                                  Duration(milliseconds: 120), (t) {
                                setState(() {
                                  weight++;
                                });
                              });
                            },
                            unHold: (TapUpDetails details) {
                              timer.cancel();
                            },
                            longMinus: (TapDownDetails details) {
                              timer = Timer.periodic(
                                  Duration(milliseconds: 120), (t) {
                                setState(() {
                                  weight--;
                                });
                              });
                            },
                            unHoldd: (TapUpDetails details) {
                              timer.cancel();
                            },
                            pressAdd: () {
                              setState(() {
                                weight++;
                              });
                            },
                            pressSub: () {
                              setState(() {
                                weight--;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      iconColumn: Column(
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kInputPage,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: kInputPageNumber,
                              ),
                              Text('YRS')
                            ],
                          ),
                          RoundIcons(
                            pressAdd: () {
                              setState(() {
                                age++;
                              });
                            },
                            pressSub: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              child: BottomButton(text: 'CALCULATE',),
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(
                    weight: weight,
                    height: height,
                    selectedGender: selectedGender);
                Navigator.push(
                  context,
                    MaterialPageRoute(
                    builder: (context) => ResultPage(
                  bmiResults: calc.calculateBmi(),
                  interpretation: calc.getInterpretation(),
                  resultText: calc.getResult(),
                ),
                )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
