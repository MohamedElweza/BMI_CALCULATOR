import 'package:flutter/material.dart';

import 'Input.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        
      ),
      initialRoute: 'BMICalculator',
      routes: {
        '/BMICalculator' :(context) => const BMICalculator(),
      },
      home: const InputPage(),
    );
  }
}