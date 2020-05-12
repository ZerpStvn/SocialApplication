import 'package:Snap/ScreenUI/splashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnapShare',
      theme: ThemeData(
      backgroundColor: Color.fromRGBO(143, 148, 251, 1),
      ),
      home: SplashScreenUI(),
    );
  }
}
