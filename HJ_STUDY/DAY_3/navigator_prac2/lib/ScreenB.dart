// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(ScreenB());

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ScreenB'),
        ),
        body: Center(
          child: Text(
            'ScreenB',
            style: TextStyle(fontSize: 24.0),
          ),
        ));
  }
}
