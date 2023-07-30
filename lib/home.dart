import 'package:flutter/material.dart';
import 'numbers.dart';
import 'words.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xff5c9cbc),
            Color(0xff93c8ec),
            Color(0xff7bbcd4),
            Color(0xff94d4dc),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              words(),
              SizedBox(height: 20,),
              numbers(),
            ],
          ),
        ),
      ),
    );
  }
}
