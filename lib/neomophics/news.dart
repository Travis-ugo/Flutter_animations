// onHorizontalDragStart: _onDragStart,
// onHorizontalDragUpdate: _onDragUpdate,
// onHorizontalDragEnd: _onDragEnd,

//   void _onDragStart(DragStartDetails details) {
//     bool isDragOpenFromLeft =
//         animationController.isDismissed && details.globalPosition.dx < 4.0;
//     bool isDragCloseFromRight =
//         animationController.isCompleted && details.globalPosition.dx > 9.0;
//     _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
//   }

//   void _onDragUpdate(DragUpdateDetails details) {
//     if (_canBeDragged) {
//       double delta = details.primaryDelta / maxSlide;
//       animationController.value += delta;
//     }
//   }

//   void _onDragEnd(DragEndDetails details) {
//     if (animationController.isDismissed || animationController.isCompleted)
//       return;
//   }

import 'package:flutter/material.dart';

var _like = TextStyle(fontSize: 32, color: Colors.white);
final Color luke = Colors.white;

var pall = Padding(
  padding: EdgeInsets.fromLTRB(60.0, 70.0, 0.0, 0.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 26,
      ),
      Row(
        children: [
          Text(
            'FlutterrIze',
            style: _like,
          )
        ],
      ),
      SizedBox(
        height: 17.0,
      ),
      Row(
        children: [
          Text('love   ', style: _like),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.car_repair,
              color: luke,
            ),
          )
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          Text('Profile   ', style: _like),
          Icon(Icons.poll, color: luke)
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          Text(
            'Polling   ',
            style: _like,
          ),
          Icon(
            Icons.book,
            color: luke,
          )
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          Text('results   ', style: _like),
          Icon(Icons.stay_primary_landscape_rounded, color: luke)
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
    ],
  ),
);
