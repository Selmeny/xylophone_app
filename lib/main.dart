import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(selectedColor: Colors.red, soundNumber: 1),
              buildKey(selectedColor: Colors.orange, soundNumber: 2),
              buildKey(selectedColor: Colors.yellow, soundNumber: 3),
              buildKey(selectedColor: Colors.green, soundNumber: 4),
              buildKey(selectedColor: Colors.blue, soundNumber: 5),
              buildKey(selectedColor: Colors.indigo, soundNumber: 6),
              buildKey(selectedColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color selectedColor, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: selectedColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }
}
