import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'text_cubit.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Txt changing'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<TextObsceureCubit, bool>(
              builder: (context, state) {
                return state
                    ? const Text('******************')
                    : const Text('Test text to change');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    context.read<TextObsceureCubit>().changeToObsceure();
                  },
                  child: const Text('Hide'),
                ),
                const SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    context.read<TextObsceureCubit>().changeToNotObsceure();
                  },
                  child: const Text('Unhide'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
