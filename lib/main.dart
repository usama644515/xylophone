import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'XyloPhone',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: (Xylophone()),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playAudio(int soundPlay) {
    final player = AudioCache();
    player.play('assets/note$soundPlay.wav');
  }

  Expanded value({required Color color, required int m}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playAudio(m);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          value(color: Colors.red, m: 1),
          value(color: Colors.green, m: 2),
          value(color: Colors.yellow, m: 3),
          value(color: Colors.grey, m: 4),
          value(color: Colors.orange, m: 5),
          value(color: Colors.white, m: 6),
          value(color: Colors.pink, m: 7),
        ],
      ),
    );
  }
}
