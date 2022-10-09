import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Magic Ball'),
        backgroundColor: Colors.blue,
      ),
      body: Ball(),
    ),
  ));
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answer = 1;
  void randomAnswer() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          randomAnswer();
        },
        child: Image.asset('images/ball$answer.png'),
      ),
    );
  }
}
