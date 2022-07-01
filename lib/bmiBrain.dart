import 'dart:math';

class BmiBrain {
  int _height = 120;
  int _age = 24;
  int _weight = 50;
  double? _bmi;

  void performActionOnHeight(int actionId) {
    print(actionId);
    if (actionId == 1) {
      if (_height == 0) return;
      _height -= 1;
    } else {
      _height += 1;
    }
    print(_height);
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

  void setHeight(int weight) {
    _weight = weight;
  }

  void calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);
  }
}
