import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage(this.userName, {Key? key}) : super(key: key);
  String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
      ),
      body: Container(),
    );
  }
}
