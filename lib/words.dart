import 'package:tflite/tflite.dart';
import 'package:flutter/material.dart';
import 'camera1.dart';

class words extends StatefulWidget {
  @override
  _words createState() => _words();
}

class _words extends State<words> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return
  Container(
    width: 400,
    height: 210,

    child: Container(decoration:
    BoxDecoration(borderRadius:
    BorderRadius.circular(20),
    boxShadow: [
    BoxShadow(
    color: Color(0xff5c9cbc),
    blurRadius: 7,
    ),
    ],),
    margin: const EdgeInsets.all(20),
    child: Material(
    type: MaterialType.transparency,
    child: InkWell(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>camera1()));
    },
    splashColor: Colors.black26,
    child: IntrinsicHeight(
    child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(mainAxisSize: MainAxisSize.min, children: [
    Image.asset(
    'assets/scrabble.png',
    fit: BoxFit.cover,
    width: 110,
    height: 110,
    ),
    const SizedBox(
    height: 10,
    ),
    Text(
    'ترجمة الكلمات',
    style: TextStyle(
    color: Colors.black),
    )
    ]),
    ),
    ),
    ),
    ),
    ),
      );
  }
}

