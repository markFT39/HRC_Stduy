// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
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
