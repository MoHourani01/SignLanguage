import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testt01/Account.dart';
import 'package:testt01/dictionary.dart';
import 'package:testt01/home.dart';

class navigate extends StatefulWidget {

  @override
  _navigateState createState() => _navigateState();
}

class _navigateState extends State<navigate> {

  final items = const [
    Icon(Icons.library_books, size: 30,),
    Icon(Icons.home , size: 30,),
    Icon(Icons.person, size: 30,),
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(
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
        backgroundColor: Color(0xff5c9cbc),
      bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: index,
          onTap: (selctedIndex){
            setState(() {
              index = selctedIndex;
            });
          },
          height: 70,
          backgroundColor: Color(0xff94d4dc),
          animationDuration: const Duration(milliseconds: 300),
        color:  Color(0xff5c9cbc),
          // animationCurve: ,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: getSelectedWidget(index: index)
        ),
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget =  dictionary();
        break;
      case 1:
        widget =  home();
        break;
      default:
        widget =  account();
        break;
    }
    return widget;
  }
}
