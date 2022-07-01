import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱시작
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Text('안녕') // 글자 위젯
      //home: Icon(Icons.shop)
      home : Image.asset('/Users/isacc_kim/StudioProjects/Study_1/f.png')

    );
  }
}
