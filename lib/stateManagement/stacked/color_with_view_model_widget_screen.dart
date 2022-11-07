import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_management/stateManagement/stacked/color_view_model.dart';

class ColorWithViewModelWidgetScreen extends ViewModelWidget<ColorViewModel> {
  @override
  Widget build(BuildContext context, viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Model Widget Color Screen'),
      ),
      body: Column(
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
      ),
    );
  }
}
