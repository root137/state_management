import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/stateManagement/bloc/realBloc/color_bloc.dart';
import 'package:state_management/stateManagement/bloc/realBloc/color_state.dart';

import 'color_event.dart';

class RealBlocScreen extends StatelessWidget {
  const RealBlocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Bloc Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlocBuilder<ColorBloc, ColorState>(
              builder: (context, colorState) {
                Color color = Colors.white;
                if (colorState is ColorChangedToRedState) {
                  color = Colors.red;
                } else if (colorState is ColorChangedToGreenState) {
                  color = Colors.green;
                } else if (colorState is ColorChangedDynamicState) {
                  color = colorState.color;
                }
                return Container(
                  height: 150,
                  width: 150,
                  color: color,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                context.read<ColorBloc>().add(ChangeColorToRedEvent());
              },
              child: Text(
                'Change to Red',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                BlocProvider.of<ColorBloc>(context).add(ChangeColorToGreenEvent());
              },
              child: Text(
                'Change to Green',
              ),
            ),
            OutlinedButton(
              onPressed: () {
                BlocProvider.of<ColorBloc>(context).add(ChangeDynamicColorEvent(color: Colors.black));
              },
              child: Text(
                'Change to Dynamic',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<DirectStateColorBloc, Color>(
              builder: (context, changedColor) {
                Color color = changedColor;
                return Container(
                  height: 150,
                  width: 150,
                  color: color,
                );
              },
            ),
            OutlinedButton(
              onPressed: () {
                BlocProvider.of<DirectStateColorBloc>(context).add(ChangeDynamicColorEvent(color: Colors.purple));
              },
              child: Text(
                'Call To Direct State',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<DirectEventAndStateColorBloc, Color>(
              builder: (context, changedColor) {
                Color color = changedColor;
                return Container(
                  height: 150,
                  width: 150,
                  color: color,
                );
              },
            ),
            OutlinedButton(
              onPressed: () {
                BlocProvider.of<DirectEventAndStateColorBloc>(context).add(Colors.yellow);
              },
              child: Text(
                'Call To Direct Event And State',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
