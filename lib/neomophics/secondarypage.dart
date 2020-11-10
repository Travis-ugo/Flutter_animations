import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> with SingleTickerProviderStateMixin {
  AnimationController animationController;

  final double maxSlide = 225.0;
  final double scale = 0.5;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    var karl = Container(color: Colors.blue);

    var ken = Container(color: Colors.yellow);

    return GestureDetector(
      onTap: toggle,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          double slide = maxSlide * animationController.value;
          double scale = 1 - (animationController.value * 0.3);

          return Stack(
            children: <Widget>[
              karl,
              Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: ken),
            ],
          );
        },
      ),
    );
  }
}
