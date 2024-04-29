import 'package:diceroll/screen/diceroll_mainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Diceroll());
}

class Diceroll extends StatelessWidget {
  const Diceroll({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
        home: DiceRollMainPage(),
    );
  }
}
