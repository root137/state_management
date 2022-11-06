import 'package:flutter/material.dart';

abstract class ColorState {}

class InitialColorState extends ColorState {}

class ColorChangedToRedState extends ColorState {}

class ColorChangedToGreenState extends ColorState {}

class ColorChangedDynamicState extends ColorState {
  ColorChangedDynamicState({required this.color});
  final Color color;
}
