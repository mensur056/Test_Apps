import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_apps/Second_Test/sign_in_page.dart';
import 'package:test_apps/Second_Test/welcome_page.dart';

class HomePageTwo extends StatelessWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home PageTwo'),
      ),
      body: Container(),
    );
  }

  _openSignPage(BuildContext context) {
    _openPage(context, const SignInPage());
  }

  _openWelcomePage(BuildContext context) {
    _openPage(
        context,
        const WelcomePage(
          userName: '',
        ));
  }

  _openPage(BuildContext context, Widget page) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      MaterialPageRoute pageWay =
          MaterialPageRoute(builder: (BuildContext context) {
        return page;
      });
      Navigator.pushReplacement(context, pageWay);
    });
  }

  _readData(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userName = prefs.getString('Username');
    if (userName == null) {
      _openSignPage(context);
    } else {
      _openWelcomePage(context);
    }
  }
}
