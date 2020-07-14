
import 'package:flutter/material.dart';
import 'home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corona Virus',
      home: new MainPage(),
    );
  }
}