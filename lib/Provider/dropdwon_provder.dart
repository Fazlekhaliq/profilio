import 'package:flutter/cupertino.dart';
class DropDownProvider extends ChangeNotifier {
  String _selectedLevel = 'Level';
  String get selectedLevel => _selectedLevel;
  void updateSelectedLevel(String level) {
    _selectedLevel = level;
    notifyListeners();
  }
}
