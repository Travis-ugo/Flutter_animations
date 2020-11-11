import 'package:flutter/material.dart';

class Animate extends StatefulWidget {
  @override
  _AnimateState createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with SingleTickerProviderStateMixin {
  var love = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.zero),
    color: Colors.blue,
  );
  bool isPlaying;
  AnimationController _animationController;
  double _height = 300;
  double _width = 300;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );
  }

  void _handleOnPressed() {
    setState(() {
      _height = 400;
      _width = 150;
      love = BoxDecoration(
        color: Colors.pink[200],
        boxShadow: [
          BoxShadow(
            color: Colors.pink[100],
            offset: Offset(5, 5),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.pink[100],
            offset: Offset(-5, -5),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          decoration: love,
          height: _height,
          width: _width,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.greenAccent,
        onPressed: () => _handleOnPressed(),
        backgroundColor: Colors.blue[300],
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _animationController,
        ),
      ),
    );
  }
}
