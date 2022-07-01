class BmiBrain {
  int _height = 50;
  int _age = 24;

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
}
