import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorCubit extends Cubit<Color> {
  ColorCubit() : super(Colors.green);

  void changeToRed() {
    emit(Colors.red);
  }

  void changeToGreen() {
    emit(Colors.green);
  }
}
