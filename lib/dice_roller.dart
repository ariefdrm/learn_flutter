import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_app_testing/utils/custom_colors.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final random = Random();
  int currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
          height: 200,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.all(20),
          ),
          child: Text(
            'Roll the Dice',
            style: TextStyle(
              color: CustomColors.lightWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
