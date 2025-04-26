import 'package:flutter/material.dart';
import 'package:my_app_testing/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

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
            colors: [Colors.red, Colors.yellow],
          ),
        ),
        child: Center(child: StyleText(contentText: 'Hello, World')),
      ),
    );
  }
}
