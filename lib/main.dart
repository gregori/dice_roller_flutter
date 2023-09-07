import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dados'),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: updateDie,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: updateDie,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  int genRandomNumer() {
    return random.nextInt(6) + 1;
  }

  void updateDie() {
    setState(() {
      leftDiceNumber = genRandomNumer();
      rightDiceNumber = genRandomNumer();
    });
  }
}
