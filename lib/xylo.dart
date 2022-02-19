import 'package:flutter/material.dart';
import 'xyloClass.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({ Key? key }) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            key1.renderKey(),
            key2.renderKey(),
            key3.renderKey(),
            key4.renderKey(),
            key5.renderKey(),
            key6.renderKey(),
            key7.renderKey(),
          ],
        ),
      ),
      );
  }
}