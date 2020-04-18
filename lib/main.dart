import 'package:app_sqflite2/page/home_menu.dart';
import 'package:flutter/material.dart';
import 'package:app_sqflite2/page/about_me.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}