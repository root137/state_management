import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_management/stateManagement/example/emote_view_model.dart';

class EmoteScreen extends StatelessWidget {
  const EmoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade400,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade800,
          title: const Center(child: Text('Emote')),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Card(
              elevation: 2,
              color: Colors.transparent,
              child: Text(
                'Click the heart to fix it',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
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
                          viewModel.expand
                              ? Icons.favorite
                              : Icons.heart_broken,
                          color: Colors.pink,
                          size: 100,
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        top: viewModel.expand ? 60 : 140,
                        right: viewModel.expand ? 80 : 140,
                        child: Icon(
                          Icons.favorite,
                          color: viewModel.expand
                              ? Colors.pinkAccent
                              : Colors.transparent,
                          size: 30,
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        top: viewModel.expand ? 40 : 140,
                        right: viewModel.expand ? 140 : 140,
                        child: Icon(
                          Icons.favorite,
                          color: viewModel.expand
                              ? Colors.pinkAccent
                              : Colors.transparent,
                          size: 30,
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        top: viewModel.expand ? 60 : 140,
                        left: viewModel.expand ? 80 : 140,
                        child: Icon(
                          Icons.favorite,
                          color: viewModel.expand
                              ? Colors.pinkAccent
                              : Colors.transparent,
                          size: 30,
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        bottom: viewModel.expand ? 70 : 140,
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 300),
                          opacity: viewModel.expand ? 1 : 0,
                          child: Text(
                            'Sandip',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
