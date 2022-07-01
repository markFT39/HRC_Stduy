 import 'package:flutter/material.dart';

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
      home: MyPage(),
    );
  }
}

class MyPage  extends StatelessWidget {
  const MyPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Row(
            //mainAxisSize: MainAxisSize.min , // 상하로 관여하여 정중앙에 배치
            //mainAxisAlignment: MainAxisAlignment.center, // 정중앙에 배치
            // verticalDirection: VerticalDirection.down, // 위에서 아래로 배치
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //각 사의 공간
            //mainAxisAlignment: MainAxisAlignment.spaceBetween, // 시작점으로 부터 공간 추가
            // crossAxisAlignment: CrossAxisAlignment.end, // 끝자락에 배치
            crossAxisAlignment: CrossAxisAlignment.stretch, // 끝까지 늘여서 배치(가로 세로 필요없다)
            children: <Widget>[
               Container(
                 width: 100,
                 height: 100,
                 color: Colors.white,
                 child: Text('Container 1'),
               ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
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
//https://medium.com/flutter-community/...