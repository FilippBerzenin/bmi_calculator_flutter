import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:flutter/material.dart';
import 'screens/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/': (context) => InputPage()},
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.dark().copyWith(
        primary: Color(0xFF0A0E21),
      )),
      initialRoute: '/',
    );
  }
}
