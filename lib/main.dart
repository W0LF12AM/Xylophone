import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded noteButton({required Color colors, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: colors, shape: LinearBorder()),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: [
            noteButton(colors: Colors.red, soundNumber: 1),
            noteButton(colors: Colors.orange, soundNumber: 2),
            noteButton(colors: Colors.yellow, soundNumber: 3),
            noteButton(colors: Colors.green, soundNumber: 4),
            noteButton(colors: Colors.teal, soundNumber: 5),
            noteButton(colors: Colors.blue, soundNumber: 6),
            noteButton(colors: Colors.purple, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
