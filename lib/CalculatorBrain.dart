import 'dart:math';

class CalculaterBrain {
  CalculaterBrain({this.wight, this.hight});

  final double wight;
  final double hight;

  double calculatingBmi() {
    return _roundDouble((this.wight / (pow(hight / 100, 2))), 1);
  }

  double _roundDouble(double value, int places) {
    return double.parse((value).toStringAsFixed(places));
  }

  String getBMICategory() {
    double bmiIndex = calculatingBmi();
    if (bmiIndex < 16) {
      return "Underweight (Severe thinness)";
    } else if (bmiIndex >= 16 && bmiIndex <= 16.9) {
      return "Underweight (Moderate thinness)";
    } else if (bmiIndex >= 17 && bmiIndex <= 18.4) {
      return "Underweight (Mild thinness)";
    } else if (bmiIndex >= 18.5 && bmiIndex <= 24.9) {
      return "Normal range";
    } else if (bmiIndex >= 25.0 && bmiIndex <= 29.9) {
      return "Overweight (Pre-obese)";
    } else if (bmiIndex >= 30.0 && bmiIndex <= 34.9) {
      return "Obese (Class I)";
    } else if (bmiIndex >= 35.0 && bmiIndex <= 39.9) {
      return "Obese (Class II)";
    } else if (bmiIndex >= 40.0)
      return "Obese (Class III)";
    else
      return "Something wrong with input data";
  }
}

// Underweight (Severe thinness)	< 16.0
// Underweight (Moderate thinness)	16.0 – 16.9
// Underweight (Mild thinness)	17.0 – 18.4
// Normal range	18.5 – 24.9
// Overweight (Pre-obese)	25.0 – 29.9
// Obese (Class I)	30.0 – 34.9
// Obese (Class II)	35.0 – 39.9
// Obese (Class III)	≥ 40.0
