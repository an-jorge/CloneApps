import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var leftDice = 1;
  var rightDice = 1;

  void updateDiceFaces() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Dice Delight',
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w200),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  updateDiceFaces();
                },
                child: Image.asset('assets/images/dice-1.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  updateDiceFaces();
                },
                child: Image.asset('assets/images/dice-2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
