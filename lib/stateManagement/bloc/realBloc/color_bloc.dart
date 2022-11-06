import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/stateManagement/bloc/realBloc/color_event.dart';
import 'package:state_management/stateManagement/bloc/realBloc/color_state.dart';

///bloc using custom event and custom state
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(InitialColorState()) {
    on<ChangeColorToRedEvent>((event, emit) {
      ///do your logic here
      emit(ColorChangedToRedState());
    });
    on<ChangeColorToGreenEvent>((event, emit) {
      ///do your stuff here
      emit(ColorChangedToGreenState());
    });
    on<ChangeDynamicColorEvent>((event, emit) {
      ///do your stuff here
      emit(ColorChangedDynamicState(color: event.color));
    });
  }
}

///bloc using custom event and direct state
class DirectStateColorBloc extends Bloc<ColorEvent, Color> {
  DirectStateColorBloc() : super(Colors.white) {
    on<ChangeColorToRedEvent>((event, emit) {
      ///do your logic here
      emit(Colors.red);
    });
    on<ChangeColorToGreenEvent>((event, emit) {
      ///do your stuff here
      emit(Colors.green);
    });
    on<ChangeDynamicColorEvent>((event, emit) {
      ///do your stuff here
      emit(event.color);
    });
  }
}

///bloc using direct event and direct state
class DirectEventAndStateColorBloc extends Bloc<Color, Color> {
  DirectEventAndStateColorBloc() : super(Colors.white) {
    on<Color>((event, emit) {
      ///do your logic here
      emit(event);
    });
  }
}
