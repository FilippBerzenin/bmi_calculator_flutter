import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Constans.dart';
import 'IconContent.dart';
import 'ReuseableCode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = keyInactiveCodeColor;
  Color femaleCardColor = keyInactiveCodeColor;
  Gender selectGender;
  int hight = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCode(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.MALE;
                      });
                    },
                    color: selectGender == Gender.MALE
                        ? keyActiveCodeColor
                        : keyInactiveCodeColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                      textColor: keyIconTextColor,
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCode(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.FEMALE;
                      });
                    },
                    color: selectGender == Gender.FEMALE
                        ? keyActiveCodeColor
                        : keyInactiveCodeColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                      textColor: keyIconTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCode(
              color: keyDefaultBoxColor,
              cardChild: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: keyIconTextColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        hight.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: keyIconTextColor,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: (hight.toDouble()),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (newValue) {
                      setState(() {
                        hight = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCode(color: keyDefaultBoxColor),
                ),
                Expanded(
                  child: ReuseableCode(color: keyDefaultBoxColor),
                ),
              ],
            ),
          ),
          Container(
            color: keyBottomContainerCollor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: keyBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
