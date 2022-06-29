// ignore_for_file: prefer_const_constructors, must_be_immutable, annotate_overrides
// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFrame();
  }
}

class AppFrame extends MaterialApp {
  AppFrame({Key? key}) : super(key: key);

  @override
  var home = MyHomePage();
  var title = 'Snack Bar';
  var theme = ThemeData(
    primarySwatch: Colors.amber,
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.red,
            ),
            textStyle: MaterialStateProperty.all(
              TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          onPressed: () {},
          child: Text('Show me'),
        ),
      ),
    );
  }
}
