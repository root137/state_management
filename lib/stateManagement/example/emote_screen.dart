import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_management/stateManagement/example/emote_view_model.dart';

class EmoteScreen extends StatelessWidget {
  const EmoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emote'),
      ),
      body: Center(
        child: ViewModelBuilder<EmoteViewModel>.reactive(
          viewModelBuilder: () => EmoteViewModel(),
          builder: (context, viewModel, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: () {
                    if (viewModel.expand) {
                      viewModel.collapseHeart();
                    } else {
                      viewModel.expandHeart();
                    }
                  },
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                    size: 100,
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  right: viewModel.expand ? 80 : 130,
                  top: viewModel.expand ? 60 : 130,
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  top: viewModel.expand ? 40 : 130,
                  right: viewModel.expand ? 140 : 130,
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  top: viewModel.expand ? 60 : 130,
                  left: viewModel.expand ? 80 : 130,
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
