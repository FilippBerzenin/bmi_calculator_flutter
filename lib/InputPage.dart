import 'package:flutter/material.dart';
import 'IconContent.dart';
import 'ReuseableCode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const defaultBoxColor = Color(0xFF1D1E33);
const bottomContainerCollor = Color(0xFFEB1555);
const iconTextColor = Color(0xFF8D8E98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    color: defaultBoxColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      iconSize: 80.0,
                      text: "Male",
                      textSize: 18.0,
                      textColor: iconTextColor,
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCode(
                    color: defaultBoxColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconSize: 80.0,
                      text: "FEMALE",
                      textSize: 18.0,
                      textColor: iconTextColor,
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
