class BmiBrain {
  int _height = 30;
  int _age = 24;

  void performActionOnHeight(int actionId) {
    if (actionId == 1) {
      if (_height == 0) return;
      _height -= 1;
    } else {
      _height -= 1;
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
}
