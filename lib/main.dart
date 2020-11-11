import 'package:flutter/material.dart';
import 'neomophics/animated.dart';
import 'neomophics/home.dart';
import 'neomophics/land.dart';
import 'neomophics/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Land(),
        '/home': (contex) => Home(),
        '/second': (context) => Bad(),
        '/animate': (context) => Animate(),
      },
    );
  }
}
