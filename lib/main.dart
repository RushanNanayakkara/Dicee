import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 6;
  int rightDiceNo = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDiceNumbers();
                  });
                },
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Image.asset("images/dice$leftDiceNo.png"),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDiceNumbers();
                  });
                },
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Image.asset("images/dice$rightDiceNo.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeDiceNumbers() {
    setState(() {
      rightDiceNo = Random().nextInt(6) + 1;
      leftDiceNo = Random().nextInt(6) + 1;
    });
  }
}
