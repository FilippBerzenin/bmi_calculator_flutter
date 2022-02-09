import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'Resultpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => Resultpage()
      },
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.dark().copyWith(
        primary: Color(0xFF0A0E21),
      )),
      initialRoute: '/',
    );
  }
}
