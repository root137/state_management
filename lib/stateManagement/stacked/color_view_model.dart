import 'package:flutter/material.dart';

class ColorViewModel extends ChangeNotifier {
  Color color = Colors.red;

  void changeColorToRed() {
    color = Colors.red;
    notifyListeners();
  }

  void changeColorToGreen() {
    color = Colors.green;
    notifyListeners();
  }
}
