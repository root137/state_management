import 'package:flutter/material.dart';

class SetStateScreen extends StatefulWidget {
  const SetStateScreen({Key? key}) : super(key: key);

  @override
  State<SetStateScreen> createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  Color containerColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    print('ste statae build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Set State'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            color: containerColor,
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                containerColor = Colors.red;
              });
            },
            child: Text(
              'Change to Red',
            ),
          ),
        ],
      ),
    );
  }
}
