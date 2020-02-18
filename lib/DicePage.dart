import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void diceRandom() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.asset('img/dice$leftDiceNumber.png'),
              ),
              Expanded(
                child: Image.asset('img/dice$rightDiceNumber.png'),
              ),
            ],
          ),
        ),
        Container(
          child: FlatButton(
              onPressed: () {
                diceRandom();
              },
              child: Text("button")),
        )
      ],
    );
  }
}