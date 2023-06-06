import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('DICE'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Image.asset('assets/images/dice-1.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
