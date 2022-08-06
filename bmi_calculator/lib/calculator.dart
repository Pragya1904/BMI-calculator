import 'dart:math';
import 'screens/input_page.dart';
import 'screens/results_page.dart';
class Calculator {
  final int height;
  final int weight;
  Calculator({ required this.height, required this.weight});

  double _bmi=0;
  String BMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5)
      return "Normal";
    else
      return "Underweight";
  }

  String getFeedback() {
    if (_bmi >= 25) {
      return "You are overweight,exercise more to get fit";
    } else if (_bmi > 18.5)
      return "You are normal,exercise regularly to stay fit";
    else
      return "You are underweight,follow a balanced diet to get fit";
  }
}
