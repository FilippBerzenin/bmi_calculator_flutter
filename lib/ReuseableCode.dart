import 'package:flutter/material.dart';

class ReuseableCode extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReuseableCode({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.color,
        ),
      ),
    );
  }
}
