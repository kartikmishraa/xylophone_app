import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title_ = 'Xylophone';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: title_,
      home: XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({ Key? key }) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  void playMedia(int audioNum) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$audioNum.wav');
  }

  Expanded xyloKey(int audioNum, Color _color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {playMedia(audioNum);},
        child: Container(
          color: _color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            xyloKey(1, Colors.red),
            xyloKey(2, Colors.orange),
            xyloKey(3, Colors.blue),
            xyloKey(4, Colors.pink),
            xyloKey(5, Colors.greenAccent),
            xyloKey(6, Colors.limeAccent),
            xyloKey(7, Colors.deepPurpleAccent),
          ],
        ),
      ),
      );
  }
}
