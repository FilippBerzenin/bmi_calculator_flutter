import 'package:flutter/material.dart';
import 'IconContent.dart';
import 'ReuseableCode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const defaultBoxColor = Color(0xFF1D1E33);
const bottomContainerCollor = Color(0xFFEB1555);
const iconTextColor = Color(0xFF8D8E98);
const inactiveCodeColor = Color(0xFF111328);
const activeCodeColor = Color(0xFF1D1E33);

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCodeColor;
  Color femaleCardColor = inactiveCodeColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.MALE) {
      if (maleCardColor == inactiveCodeColor) {
        maleCardColor = activeCodeColor;
        femaleCardColor = inactiveCodeColor;
      } else {
        maleCardColor = inactiveCodeColor;
        femaleCardColor = activeCodeColor;
      }
    } else if (femaleCardColor == inactiveCodeColor) {
      femaleCardColor = activeCodeColor;
      maleCardColor = inactiveCodeColor;
    } else {
      femaleCardColor = inactiveCodeColor;
      maleCardColor = activeCodeColor;
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.MALE);
                      });
                    },
                    child: ReuseableCode(
                      color: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                        textColor: iconTextColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.FEMALE);
                      });
                    },
                    child: ReuseableCode(
                      color: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                        textColor: iconTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCode(color: defaultBoxColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCode(color: defaultBoxColor),
                ),
                Expanded(
                  child: ReuseableCode(color: defaultBoxColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerCollor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
