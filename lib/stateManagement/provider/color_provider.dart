import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
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
