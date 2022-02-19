import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylo {
  late Color _color;
  late int _audioNum;

  Xylo(Color c, int n) {
    _color = c;
    _audioNum = n;
  }

  void _playMedia(int audioNum) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$audioNum.wav');
  }

  Expanded renderKey() {
    return Expanded(
      child: GestureDetector(
        onTap: () {_playMedia(_audioNum);},
        child: Container(
          color: _color,
        ),
      ),
    );
  }
}

Xylo key1 = Xylo(Colors.red, 1);
Xylo key2 = Xylo(Colors.orange, 2);
Xylo key3 = Xylo(Colors.blue, 3);
Xylo key4 = Xylo(Colors.pink, 4);
Xylo key5 = Xylo(Colors.greenAccent, 5);
Xylo key6 = Xylo(Colors.limeAccent, 6);
Xylo key7 = Xylo(Colors.deepPurpleAccent, 7);