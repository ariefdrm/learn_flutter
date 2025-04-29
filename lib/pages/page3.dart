import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page3',
      home: Scaffold(body: Column(
        children: [
          Center(child: Text('Page3')),
        ],
      )),
    );
  }
}
