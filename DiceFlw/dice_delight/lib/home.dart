import 'package:dice_delight/strings.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int left = 1;
  int right = 1;

  void rollDices() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  void soundTrack(String audioPath) {
    setState(() {
      final assetsAudioPlayer = AssetsAudioPlayer();
      assetsAudioPlayer.open(
        Audio(audioPath),
      );
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
                  rollDices();
                  soundTrack(rollTrack);
                },
                child: Image.asset('$imagePath-$left.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  rollDices();
                  soundTrack(rollTrack);
                },
                child: Image.asset('$imagePath-$right.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
