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
      theme: ThemeData(
      ),
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
       appBar: AppBar(
         title: Text('First Page'),
       ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the Second Page'),
          onPressed: (){Navigator.push(context2, MaterialPageRoute(
    builder: (context) => SecondPage()));
          }),
      ),
    );
  }
}

class SecondPage  extends StatelessWidget {
  const SecondPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the First Page'),
          onPressed:   (){
            Navigator.pop(ctx); // pop method를 이용하여 이전으로 가기
          },
        ),
      ),
    );
  }
}



