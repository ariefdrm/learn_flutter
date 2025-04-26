import 'package:flutter/material.dart';
import 'package:my_app_testing/custom_colors.dart' show CustomColors;

class StyleText extends StatelessWidget {
  final String contentText;
  const StyleText({super.key, required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: CustomColors.darkMidnight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        contentText,
        style: TextStyle(
          color: CustomColors.lightWhite,
          fontSize: 44,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
