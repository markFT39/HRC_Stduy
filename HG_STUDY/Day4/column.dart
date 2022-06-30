// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Column(
          // verticalDirection: VerticalDirection.up,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.red,
              child: Text(
                'RED',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Text('GREEN'),
            ),
            Container(
              height: 100,
              color: Colors.blue,
              child: Text('BLUE'),
            ),
          ],
        ),
      ),
    );
  }
}
