import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/stateManagement/bloc/realBloc/practice/text_cubit.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 300,
          ),
          child: Column(
            children: [
              BlocBuilder<TextCubit, bool>(builder: (context, hide) {
                return Text(
                  hide ? "*************" : "YOUR TEXT HERE",
                  style: const TextStyle(fontSize: 20),
                );
              }),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<TextCubit>().hideText();
                },
                child: const Text(
                  "Hide Text",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<TextCubit>().unHideText();
                },
                child: const Text(
                  "UnHide Text",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
