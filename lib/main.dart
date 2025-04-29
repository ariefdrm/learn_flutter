import 'package:flutter/material.dart';
import 'package:my_app_testing/page2.dart';
import 'package:my_app_testing/utils/custom_colors.dart' show CustomColors;

void main() {
  // runApp(WidgetsApp(color: Colors.red, home: Text('Hello World!')));

  runApp(
    const Secondpage(
      gradientColors: [
        CustomColors.darkMidnight,
        CustomColors.darkSky,
        CustomColors.lightSky,
        CustomColors.lightWhite,
      ],
    ),
  );
}
