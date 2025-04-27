import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_app_testing/utils/custom_colors.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var random = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$random.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        Image.asset(activeDiceImage, width: 200, height: 200),
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
