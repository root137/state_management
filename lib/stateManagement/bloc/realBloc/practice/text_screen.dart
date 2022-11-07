import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/stateManagement/bloc/realBloc/practice/text_cubit.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Screen'),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<TextCubit, TextState>(
          builder: (context, textState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  textState.shouldHide ? textState.virtualText : textState.realText,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    if (textState.shouldHide) {
                      context.read<TextCubit>().hideOrUnHideText(
                            text: 'Dipak Shrestha',
                            shouldHide: false,
                          );
                    } else {
                      context.read<TextCubit>().hideOrUnHideText(
                            text: 'Dipak Shrestha',
                            shouldHide: true,
                          );
                    }
                  },
                  child: Text(
                    textState.shouldHide ? 'Un Hide Text' : 'Hide Text',
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
