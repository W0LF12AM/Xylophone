import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: TextButton(
              onPressed: () async {
                try {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note1.wav'));
                } catch (e) {
                  print('Error saat memainkan audio: $e');
                }
              },
              child: Text('Click Here')),
        )),
      ),
    );
  }
}
