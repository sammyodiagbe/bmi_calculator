import 'dart:math';

class BmiBrain {
  int _height = 120;
  int _age = 24;
  int _weight = 50;
  double _bmi = 0;
  String _feedback = 'Normal';
  String _status = 'Normal';

  void performActionOnWeight(int actionId) {
    if (actionId == 1) {
      if (_weight == 0) return;
      _weight -= 1;
    } else {
      _weight += 1;
    }
  }

  void performActionOnAge(int actionId) {
    if (actionId == 1) {
      if (_age <= 1) return;
      _age -= 1;
    } else {
      _age += 1;
    }
  }

  int getHeight() {
    return _height;
  }

  int getAge() {
    return _age;
  }

  int getWeight() {
    return _weight;
  }

  void setHeight(int height) {
    _height = height;
  }

  void calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);
    if (_bmi >= 25) {
      _feedback =
          'You have a higher than normal body weight. Try to exercise more';
      _status = 'Overweight';
    } else if (_bmi > 18.5) {
      _feedback = 'Normal';
      _status = 'Normal';
    } else {
      _feedback = 'You have a lesser than normal body weight. Try to eat more';
      _status = 'Underweight';
    }
  }

  String getStatus() {
    return _status;
  }

  String getFeedback() {
    return _feedback;
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }
}
