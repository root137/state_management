import 'package:flutter_bloc/flutter_bloc.dart';

class TextObsceureCubit extends Cubit<bool> {
  TextObsceureCubit() : super(false);

  void changeToObsceure() {
    emit(true);
  }

  void changeToNotObsceure() {
    emit(false);
  }
}

//this is event and bool is state.
