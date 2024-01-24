import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

  void chanceDices() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });

    if (rightDiceNumber == leftDiceNumber ||
        rightDiceNumber == leftDiceNumber) {
      debugPrint('Winner');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'DICE GAME',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
          ),
        ),
        body: Center(
            child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  chanceDices();
                },
                child: Image.asset('assets/images/dice-$rightDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  chanceDices();
                },
                child: Image.asset('assets/images/dice-$leftDiceNumber.png'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
