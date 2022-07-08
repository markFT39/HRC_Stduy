// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todolist_firebase/loading.dart';
import 'todo_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text(snapshot.error.toString()),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Loading();
          }
          return MaterialApp(
            //debugShowCheckedModeBanner: false,
            home: TodoList(),
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.grey[900],
              primarySwatch: Colors.blue,
            ),
          );
        });
  }
}
