import 'package:flutter/material.dart';
import 'package:my_app_testing/custom_colors.dart';
import 'package:my_app_testing/page2.dart';

void main() {
  // runApp(WidgetsApp(color: Colors.red, home: Text('Hello World!')));

  runApp(
    const MaterialApp(
      home: Secondpage(
        gradientColors: [
          CustomColors.darkMidnight,
          CustomColors.lightSky,
          CustomColors.lightWhite,
        ],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const fontSize = 48.0;
  static const color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          spacing: 50,
          children: [
            Text(
              'Hello World!',
              style: TextStyle(
                color: color,
                fontSize: fontSize,
                decoration: TextDecoration.none,
              ),
            ),
            Row(
              spacing: 10,
              children: [
                Container(
                  width: 225,
                  color: Colors.red,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Arief Darmawan',
                    style: TextStyle(color: Colors.white38, fontSize: 20),
                  ),
                ),
                Container(
                  width: 225,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      'Arief Darmawan',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 225,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(250),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
