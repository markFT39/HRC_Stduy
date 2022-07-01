// ignore_for_file: prefer_const_constructors

import '/login_app/login.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color? color;
  final double radius;
  final VoidCallback? onPressed;

  Mybutton(
      {required this.image,
      required this.text,
      this.color,
      required this.radius,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: Size(100, 50),
        ),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
