import 'package:flutter_bloc/flutter_bloc.dart';

///observer for all bloc used inside this project
class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('<------- Bloc Change Start-------->\n');
    print(change);
    print('<------- Bloc Change End -------->\n');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('<------- Bloc Transition Start-------->\n');
    print(transition);
    print('<------- Bloc Transition End -------->\n');
  }
}
