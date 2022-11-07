import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/stateManagement/provider/color_provider.dart';

class ColorProviderScreen extends StatelessWidget {
  const ColorProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Provider Screen'),
      ),
      body: Column(
        children: [
          Card(
            color: context.watch<ColorProvider>().color,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              context.read<ColorProvider>().changeColorToRed();
            },
            child: Text(
              'Change to Red',
            ),
          ),
          OutlinedButton(
            onPressed: () {
              context.read<ColorProvider>().changeColorToGreen();
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
