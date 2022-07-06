// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Charizard',
      home: Grade(),
    );
  }
}
class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text(
          'Charizard',
          style: TextStyle(
            fontWeight: FontWeight.bold ),
        ),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start, // 가로 기준 정렬
          children: <Widget>[
            Center(
              child: CircleAvatar( 
                backgroundImage: AssetImage('assets/mfire.gif'),
                radius: 60.0,
                backgroundColor: Color.fromARGB(255, 250, 249, 246),
              ),
            ),
            Divider(
              height: 60.0, //디바이더 위와 아래 사이즈 30.30 픽셀로 나눠준다는 뜻 
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0, // 양 옆 띄어주는 기능 
              ),
            Text('NAME',
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
            SizedBox(
              height: 10.0,
            ),
            Text('Charizard',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('Charizard POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using lightsaber',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),)
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('face hero tattoo',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),)
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('fire flames',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),)
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pball.png'),
                radius: 40.0,
                ),
            )
          ],
        ),
      ),
    );
  }
}
