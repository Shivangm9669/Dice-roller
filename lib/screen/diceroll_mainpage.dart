import 'dart:math';

import 'package:flutter/material.dart';

class DiceRollMainPage extends StatefulWidget {
  const DiceRollMainPage({super.key});

  @override
  State<DiceRollMainPage> createState() => _DiceRollMainPageState();
}

class _DiceRollMainPageState extends State<DiceRollMainPage> {
  var ino = 2;
  var wsno = 1;
  void imageChange() {
    setState(() {
      ino = Random().nextInt(6) + 1;
      wsno = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 49, 4, 122),
        Color.fromARGB(255, 116, 47, 228)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset('assets/images/dice-$ino.png', width: 200),
              const SizedBox(
                width: 20,
              ),
              Image.asset('assets/images/dice-$wsno.png', width: 200),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: imageChange,
              child: const Text("Roll Dice",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )))
        ],
      ),
    );
  }
}
