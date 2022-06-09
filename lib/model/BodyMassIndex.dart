import 'dart:math';

class BodyMassIndex {
  BodyMassIndex(this.height, this.weight);

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi>=18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25) {
      return 'Try to exercise more';
    } else if (_bmi>=18) {
      return 'Normal weight. Good job';
    } else {
      return 'You have to eat more';
    }
  }
}