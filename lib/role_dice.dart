import 'dart:math';

import 'package:flutter/material.dart';

class RoleDice extends StatefulWidget {


  @override
  State<RoleDice> createState() {
    return _RoleDiceState();
  }
}

class _RoleDiceState extends State<RoleDice> {
  String activeRollDice = "assets/images/dice-1.png";
  var activeRollDiceNumber = 4;

  void rollDice() {
    setState(() {
      activeRollDiceNumber = Random().nextInt(6) + 1;
      activeRollDice = "assets/images/dice-$activeRollDiceNumber.png";
    });
  }


@override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeRollDice,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            'rollDice',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        )
      ],
    );
  }
}
