import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(title: Text('8-Ball')),
        body: EightBall(),
      )),
    );

class EightBall extends StatelessWidget {
//  const EightBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BallPage();
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int imgNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset("images/ball$imgNum.png"),
          onPressed: () => {
            setState(() {
              imgNum = Random().nextInt(5) + 1;
            })
          },
        ),
      ),
    );
  }
}
