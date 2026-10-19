import 'package:flutter/material.dart';
import 'package:roll_dice_app/widgets/roll_dice.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(6, 140, 184, 228),
                  Color.fromARGB(6, 55, 143, 230),
                ],
                begin: startAlignment,
                end: endAlignment
              ),
            ),
            child: RollDice(),
          ),
        ),
      ),
    );
  }
}