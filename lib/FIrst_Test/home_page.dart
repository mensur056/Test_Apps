import 'package:flutter/material.dart';
import 'package:test_apps/FIrst_Test/second_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
            FlatButton(
                onPressed: () {
                  _openSecondPage(context);
                },
                child: Container(
                  child: const Text('Go to SecondPage'),
                  color: Colors.green,
                ))
          ],
        ),
      ),
    );
  }

  _openSecondPage(BuildContext context) {
    MaterialPageRoute pageWay =
        MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage(_controller.text);
    });
    Navigator.push(context, pageWay);
  }
}
