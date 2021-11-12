import 'FirstPage.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.selectedGender});

  final int height;
  final int weight;
  final newVarGender selectedGender;

  double _bmi;

  String calculateBmi() {
    _bmi = _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }


  String getResult() {
    if ((_bmi >= 31) && (selectedGender == newVarGender.male)) {
      return 'Obese';
    } else if ((_bmi >= 26) && (selectedGender == newVarGender.male)) {
      return 'Overweight';
    }
    else if ((_bmi >= 19.5) && (selectedGender == newVarGender.male)) {
      return 'Normal';
    }
    else if ((_bmi >= 29) && (selectedGender == newVarGender.female)) {
      return 'Obese';
    }
    else if ((_bmi >= 25) && (selectedGender == newVarGender.female)) {
      return 'Overweight';
    }
    else if ((_bmi >= 18.5) && (selectedGender == newVarGender.female)) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'you have a normal body weight. Good job';
    } else {
      return 'You have a lower than normal body weight. you can eat a bit more';
    }
  }
}
