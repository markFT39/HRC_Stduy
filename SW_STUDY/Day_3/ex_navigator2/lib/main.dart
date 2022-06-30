import 'package:flutter/material.dart';
import 'package:ex_navigator2/ScreenA.dart';
import 'package:ex_navigator2/ScreenB.dart';
import 'package:ex_navigator2/ScreenC.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      initialRoute: '/', // map 자료구조 생성
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}

