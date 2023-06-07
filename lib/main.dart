import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    BallPage()
  );
}
class BallPage extends StatelessWidget {
// when you want to use github after clone the project must enter (flutter pub get) cammand in the terminal of project.
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
        home: Scaffold(

          backgroundColor: Colors.blue,
          
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(child: Text('Ask Me Anything!'),),
          ),
          body: Container(
            child: Ball(),
          ),
          ),
        );
  }
}
    class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int bNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            bNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$bNumber.png'),

      ),
    );
  }
}