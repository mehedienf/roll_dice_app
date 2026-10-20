import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var currentDice = 1;
  
  void diceRoller() {
    setState(() {
      currentDice = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: .center,
      mainAxisSize: .min,
      children: [
        Image.asset('assets/dice-$currentDice.png'),
        SizedBox(height: 5),
        TextButton(
          onPressed: () {
            diceRoller();
          },
          child: Text('Roll'),
        ),
      ],
    );
  }
}
