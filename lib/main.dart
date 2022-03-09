import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Ask me Anything'),
          centerTitle: true,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
            ballNum = (Random().nextInt(5)) + 1;
            print('$ballNum');
            });
          },
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
