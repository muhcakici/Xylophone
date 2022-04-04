import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String note}) => Expanded(
        child: FlatButton(
          child: Text(note),
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, note: "DO"),
              buildKey(color: Colors.yellow, soundNumber: 2, note: "RE"),
              buildKey(color: Colors.brown, soundNumber: 3, note: "Mİ"),
              buildKey(color: Colors.orange, soundNumber: 4, note: "FA"),
              buildKey(color: Colors.green, soundNumber: 5, note: "SOL"),
              buildKey(color: Colors.blue, soundNumber: 6, note: "LA"),
              buildKey(color: Colors.pink, soundNumber: 7, note: "Sİ"),
            ],
          ),
        ),
      ),
    );
  }
}
