import 'package:flutter/widgets.dart';

abstract class ColorEvent {}

class ChangeColorToRedEvent extends ColorEvent {}

class ChangeColorToGreenEvent extends ColorEvent {}

class ChangeDynamicColorEvent extends ColorEvent {
  ChangeDynamicColorEvent({required this.color});
  final Color color;
}
