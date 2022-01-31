import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.weight, this.height});

  final int weight;
  final int height;
  double _bmi;

  String getCalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi < 24.9) {
      return 'Normal';
    } else {
      return 'Overweight';
    }
  }

  String getResultInformation() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi < 24.9) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a higher than normal body weight. Try exercise more.';
    }
  }
}
