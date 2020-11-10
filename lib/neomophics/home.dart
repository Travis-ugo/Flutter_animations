import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.grey[300],
          title: Text(
            'Neomophic design',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
          ),
          actions: [
            IconButton(
                color: Colors.grey[500],
                icon: Icon(Icons.headset_rounded),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                }),
          ],
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
            splashColor: Colors.green[300],
            child: Container(
              width: 200,
              height: 200,
              child: Icon(
                Icons.android_sharp,
                size: 90,
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(5, 5),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]),
            ),
          ),
        ));
  }
}
