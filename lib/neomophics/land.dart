import 'package:flutter/material.dart';

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Center(
        child: Container(
            child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                iconSize: 60,
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                })),
      ),
    );
  }
}
