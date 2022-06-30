// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        // child: Container(
        //   color: Colors.red,
        //   width: 100,
        //   height: 100,
        //   margin: EdgeInsets.symmetric(
        //     vertical: 50,
        //     horizontal: 10,
        //   ),
        //   padding: EdgeInsets.all(20),
        //   child: Text('Hello'),
        // ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        ),
      ),
    );
  }
}
