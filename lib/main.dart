import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    const DiceApp(),
  );
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Dicee1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _dice1Value = 1;
  int _dice2Value = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$_dice1Value.png'),
              onPressed: () => {
                setState(() {
                  _dice1Value = Random().nextInt(5) + 1;
                }),
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$_dice2Value.png'),
              onPressed: () => {
                setState(() {
                  _dice2Value = Random().nextInt(5) + 1;
                }),
              },
            ),
          ),
        ],
      ),
    );
  }
}
