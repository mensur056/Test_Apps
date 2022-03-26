import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

   final String userName;

   const WelcomePage( {required this.userName});

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
