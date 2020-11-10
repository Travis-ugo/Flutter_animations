import 'package:flutter/material.dart';
import 'package:neomophic_design/neomophics/secondarypage.dart';
import 'neomophics/home.dart';
import 'neomophics/land.dart';

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
        '/second': (context) => Second(),
      },
    );
  }
}
