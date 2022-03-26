import 'package:flutter/material.dart';
import 'package:test_apps/Second_Test/home_page_2.dart';

import 'FIrst_Test/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const HomePageTwo(),
    );
  }
}
