import 'package:bmi_calculator/components/ReuseableCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CalculatorBrain.dart';
import '../components/Constans.dart';

class ResultPage extends StatelessWidget {
  final double indexBmi;
  final String resultBmi;
  final String interpretation;

  ResultPage(
      {this.indexBmi, this.resultBmi, this.interpretation = "i don't know"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'You result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCode(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultBmi,
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.indexBmi.toString(),
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "You BMI result is $interpretation",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: CalculateButtom(
              textButton: "Re-Calculate",
              page: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
