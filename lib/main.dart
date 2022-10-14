import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallGame());

class BallGame extends StatefulWidget {
  @override
  State<BallGame> createState() => _BallGameState();
}

class _BallGameState extends State<BallGame> {
  int RandomNumber = 1;
  Function RandomNumberGenerator() {
    setState(() {
      RandomNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(children: [
          Expanded(
            child: Image(
              image: AssetImage('images/ball$RandomNumber.png'),
            ),
          ),
          ElevatedButton(
              onPressed: RandomNumberGenerator, child: Text('Answer'))
        ]),
      ),
    );
  }
}
