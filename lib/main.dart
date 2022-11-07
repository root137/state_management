import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/stateManagement/bloc/blocObserver/my_bloc_observer.dart';
import 'package:state_management/stateManagement/bloc/realBloc/color_bloc.dart';
import 'package:state_management/stateManagement/example/emote_screen.dart';

void main() {
  ///setting my bloc observer here...
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ColorBloc()),
        BlocProvider(create: (_) => DirectStateColorBloc()),
        BlocProvider(create: (_) => DirectEventAndStateColorBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        /*home: ViewModelBuilder<ColorViewModel>.nonReactive(
          viewModelBuilder: () => ColorViewModel(),
          builder: (context, viewModel, child) {
            return ColorWithViewModelWidgetScreen();
          },
        ),*/
        home: EmoteScreen(),
      ),
    );
  }
}
