import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildView(int soundNum, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: null,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildView(1, Colors.red),
              buildView(2, Colors.orange),
              buildView(3, Colors.yellow),
              buildView(4, Colors.green),
              buildView(5, Colors.teal),
              buildView(6, Colors.blue),
              buildView(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
