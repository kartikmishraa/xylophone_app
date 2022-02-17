import 'package:flutter/material.dart';
import 'xylo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => const XylophoneApp())
    );
  }

  static const _title = 'XYLOPHONE';
  static const _nameStr = 'Made by: Kartik Mishra';
  static const baseFont = 'Redressed';
  static const logoPath = 'assets/images/logo.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade200,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(logoPath),
              ),

              SizedBox(height: 25,),

              Text(
                _title,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: baseFont,
                ),
                ),
              
              SizedBox(height: 120),

              Text(
                _nameStr,
                style: TextStyle(
                  fontFamily: baseFont,
                  fontSize: 25,
                  color: Colors.white,
                  backgroundColor: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}