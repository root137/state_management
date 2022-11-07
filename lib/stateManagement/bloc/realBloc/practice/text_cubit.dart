import 'package:flutter_bloc/flutter_bloc.dart';

class TextCubit extends Cubit<TextState> {
  TextCubit() : super(TextState(realText: 'Dipak Shrestha', virtualText: ''));

  void hideOrUnHideText({required String text, bool shouldHide = false}) {
    if (shouldHide) {
      final length = text.length;
      String virtualText = '';
      for (int i = 0; i < length; i++) {
        virtualText += '*';
      }
      emit(TextState(
        realText: text,
        virtualText: virtualText,
        shouldHide: shouldHide,
      ));
    } else {
      emit(TextState(
        realText: text,
        virtualText: '',
        shouldHide: shouldHide,
      ));
    }
  }
}

class TextState {
  final String realText;
  final String virtualText;
  final bool shouldHide;

  TextState({
    required this.realText,
    required this.virtualText,
    this.shouldHide = false,
  });
}
