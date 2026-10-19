import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var activeDiceImage = 'assets/dice-1.png';

  void diceRoller() {
    setState(() {
      activeDiceImage = 'assets/dice-2.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: .center,
      mainAxisSize: .min,
      children: [
        Image.asset(activeDiceImage),
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
