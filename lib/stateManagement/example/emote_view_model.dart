import 'package:flutter/material.dart';

class EmoteViewModel extends ChangeNotifier {
  bool expand = false;
  void expandHeart() {
    expand = true;
    notifyListeners();
  }

  void collapseHeart() {
    expand = false;
    notifyListeners();
  }
}
