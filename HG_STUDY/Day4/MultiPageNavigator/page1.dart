// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(
        child: Text(
          'Page1',
          style: TextStyle(
            fontSize: 48,
          ),
        ),
      ),
    );
  }
}
