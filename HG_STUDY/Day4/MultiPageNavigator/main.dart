// ignore_for_file: prefer_const_constructors

import 'page1.dart';
import 'page2.dart';
import 'package:flutter/material.dart';
import 'myhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHome(),
        '/Page1': (context) => Page1(),
        '/Page2': (context) => Page2(),
      },
    );
  }
}
