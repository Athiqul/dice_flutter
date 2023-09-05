import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;
  var score = 0;
  var count = 0;
  var btnTitle = 'Roll Dice!';
  void rollDice() {
    //On press function
    var imageNumber = randomizer.nextInt(6) + 1;

    setState(() {
      if (count == 7) {
        score = 0;
        count = 0;
        btnTitle = 'Play Again!';
      } else {
        currentDice = imageNumber;
        score += currentDice;
        count++;
        var p = 1 + count;
        if (p == 8) {
          btnTitle = 'Game end your score is: $score';
        } else {
          btnTitle = 'Ready for roll: $p';
        }
      }
    });
  }

  @override
  Widget build(contex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 180,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                backgroundColor: Colors.blue,
                textStyle: const TextStyle(fontSize: 28)),
            child: Text(
              btnTitle,
              style: const TextStyle(color: Colors.white),
            )),
        const SizedBox(
          height: 20,
        ),
        Text('Current Score is: $score'),
      ],
    );
  }
}
