// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dice game'),
          backgroundColor: Colors.redAccent,
        ),
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(child: Image.asset('image/dice$leftDice.png')),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(child: Image.asset('image/dice$rightDice.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                  });
                  showToast("Left dice: {$leftDice}, Right dice: {$rightDice}");
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 35)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orangeAccent),
                ),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Icon(
                    Icons.play_arrow,
                    size: 50.0,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      textColor: Colors.black,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
