import 'package:flutter/material.dart';
import 'package:my_app_testing/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Secondpage extends StatelessWidget {
  final List<Color> gradientColors;
  final String appBarTitle;
  const Secondpage({
    super.key,
    required this.appBarTitle,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 68, 68, 68),
        appBar: AppBar(title: Center(child: Text(appBarTitle))),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: gradientColors,
            ),
          ),
          child: Center(child: DiceRoller()),
        ),
      ),
    );
  }
}
