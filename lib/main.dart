import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballAnswer = 2;

  void shakeBall() {
    setState(() {
      ballAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text('8-Ball App - Ask Me Anything!'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () => shakeBall(),
                    child: Center(
                      child: Image.asset('images/ball$ballAnswer.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
