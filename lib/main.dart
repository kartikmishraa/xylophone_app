import 'package:flutter/material.dart';
import 'splash.dart';

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
      home: SplashPage(),
    );
  }
}
