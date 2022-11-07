import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'color_view_model.dart';

class ReactiveColorScreen extends StatelessWidget {
  const ReactiveColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reactive Color Screen'),
      ),
      body: ViewModelBuilder<ColorViewModel>.reactive(
          viewModelBuilder: () => ColorViewModel(),
          builder: (context, viewModel, child) {
            return Column(
              children: [
                Card(
                  color: viewModel.color,
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
                    viewModel.changeColorToRed();
                  },
                  child: Text(
                    'Change to Red',
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    viewModel.changeColorToGreen();
                  },
                  child: Text(
                    'Change to Green',
                  ),
                ),
              ],
            );
          }),
    );
  }
}
