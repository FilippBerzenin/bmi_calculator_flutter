import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  final icon;
  final iconSize;
  final text;
  final textColor;
  final textSize;

  IconContent(
      {@required this.icon,
      this.text,
      this.textColor,
      this.iconSize = 80.0,
      this.textSize = 18.0});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: this.iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: TextStyle(
            fontSize: this.textSize,
            color: this.textColor,
          ),
        )
      ],
    );
  }
}
