import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_apps/Second_Test/welcome_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn Page'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
          ),
          RaisedButton(
            onPressed: () {
              _signIn(context);
            },
            child: Text('Sing in'),
          )
        ],
      ),
    );
  }

  _signIn(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', _controller.text);
    _openWelcomePage(context, _controller.text);
  }

  _openWelcomePage(BuildContext context, String userName) {
    _openPage(context, WelcomePage('userName'));
  }

  _openPage(BuildContext context, Widget page) {
    MaterialPageRoute pageWay =
        MaterialPageRoute(builder: (BuildContext context) {
      return page;
    });
    Navigator.push(context, pageWay);
  }
}
