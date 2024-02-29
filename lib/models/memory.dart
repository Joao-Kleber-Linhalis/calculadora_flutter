class Memory {
  String _value = '';

  String get value {
    return _value;
  }

  _allClear() {
    _value = '';
  }

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else {
      _value += command;
    }
  }
}
