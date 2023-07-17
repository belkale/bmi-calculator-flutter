import 'dart:math';

class CalculatorBrain {
  final double _bmi;

  CalculatorBrain({required int height, required int weight})
      : _bmi = weight / (pow(height / 100, 2));

  String getBMI() => _bmi.toStringAsFixed(1);

  String getResult() {
    if (_bmi >= 25.0) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return 'You are overweight. You need to diet and exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You are normal. Good job!';
    } else {
      return 'You are underweight. You need to eat health and exercise.';
    }
  }
}
