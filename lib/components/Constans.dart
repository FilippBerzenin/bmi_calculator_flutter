import 'dart:ui';

import 'package:flutter/cupertino.dart';

const keyBottomContainerHeight = 80.0;
const keyDefaultBoxColor = Color(0xFF1D1E33);
const keyBottomContainerCollor = Color(0xFFEB1555);
const keyIconTextColor = Color(0xFF8D8E98);
const keyInactiveCodeColor = Color(0xFF111328);
const keyActiveCodeColor = Color(0xFF1D1E33);

enum Gender {
  MALE,
  FEMALE,
}

const KLargeButtonStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

class CalculateButtom extends StatelessWidget {
  final String textButton;
  final Function page;
  const CalculateButtom({
    @required this.textButton,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: page,
      child: Center(
        child: Container(
          child: Center(
            child: Text(
              textButton,
              style: KLargeButtonStyle,
            ),
          ),
          color: keyBottomContainerCollor,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(bottom: 20.0),
          width: double.infinity,
          height: keyBottomContainerHeight,
        ),
      ),
    );
  }
}
