import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(this._title, {Key? key}) : super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _title,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
