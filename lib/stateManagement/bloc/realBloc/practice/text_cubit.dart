import 'package:flutter_bloc/flutter_bloc.dart';

class TextCubit extends Cubit<bool> {
  TextCubit() : super(false);

  void hideText() {
    emit(true);
  }

  void unHideText() {
    emit(false);
  }
}
