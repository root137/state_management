import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/stateManagement/bloc/color_cubit.dart';

class BlocScreen extends StatelessWidget {
  BlocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('bloc screen main build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: Column(
        children: [
          BlocBuilder<ColorCubit, Color>(
            builder: (context, color) {
              print('bloc builder build');
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
              context.read<ColorCubit>().changeToRed();
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
              BlocProvider.of<ColorCubit>(context).changeToGreen();
            },
            child: Text(
              'Change to Green',
            ),
          ),
        ],
      ),
    );
  }
}
