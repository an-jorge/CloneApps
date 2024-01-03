import 'package:dice_delight/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Delight',
      theme: ThemeData(useMaterial3: true, fontFamily: 'RubikGlitch'),
      darkTheme: ThemeData.dark(),
      home: const Home(),
    );
  }
}
