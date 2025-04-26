import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Secondpage extends StatelessWidget {
  final List<Color> gradientColors;
  const Secondpage({super.key, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 68, 68, 68),
      appBar: AppBar(title: Center(child: Text('Second Page'))),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: gradientColors,
          ),
        ),
        child: Center(
          child: Image.asset('assets/images/dice-2.png', width: 200),
        ),
      ),
    );
  }
}
