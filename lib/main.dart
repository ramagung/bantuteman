import 'package:app_sqflite2/splash.dart';
import 'package:flutter/material.dart';





import 'lib/page/splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFF7D59)
      ),
      home: SplashScreen(),
    );
  }
}
