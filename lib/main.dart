import 'package:flutter/material.dart';

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

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({ Key? key }) : super(key: key);

  Expanded xyloKey(Color _color) {
    return Expanded(
      child: GestureDetector(
        onTap: () => {},
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
            xyloKey(Colors.red),
            xyloKey(Colors.orange),
            xyloKey(Colors.blue),
            xyloKey(Colors.pink),
            xyloKey(Colors.greenAccent),
            xyloKey(Colors.limeAccent),
          ],
        ),
      ),
      );
  }
}
