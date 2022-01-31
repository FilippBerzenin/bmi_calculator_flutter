import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  final icon;
  final iconSize;
  final text;
  final textColor;
  final textSize;

  IconContent(
      {@required this.icon,
      this.iconSize,
      this.text,
      this.textColor,
      this.textSize});

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
