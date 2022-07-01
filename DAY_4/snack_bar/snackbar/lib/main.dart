// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  Mypage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: TextButton(
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(SnackBar(
                    content: Text('hellow'),
                  ));
                },
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                  backgroundColor: Colors.brown,
                ),
                child: Text(
                  'Show me',
                  style: TextStyle(color: Color.fromARGB(255, 7, 2, 2)),
                ),
              ),
            );
          },
        ));
  }
}
