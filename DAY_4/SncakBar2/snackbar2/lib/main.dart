// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );  
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  RaisedButton(
        child:  Text('Show me'),
        onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Hello',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
            ),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
            ),
            );
        }),
    );
  }
}