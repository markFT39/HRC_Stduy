import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // flutter 최상위 함수 run 불러오기

class MyApp extends StatelessWidget {
  // const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor Card', // 작업관리자에서 보이는 것
      theme : ThemeData( // theme 설정
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
//const ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MulBok'), // 지금 보이는 화면(패널)에 보이는 것을 나타냄
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body:  Center(
        child: Column( // 가로축
              mainAxisAlignment: MainAxisAlignment.center, // 세로축
              children: <Widget>[
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ]
          ),
      ),
      );
}
}


