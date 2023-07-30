import 'package:flutter/material.dart';
import 'package:testt01/dictionary_list_numbers.dart';
import 'package:testt01/dictionary_list_words.dart';
import 'package:testt01/numbers.dart';

class dictionary extends StatefulWidget {
  @override
  _dictionary createState() => _dictionary();
}

class _dictionary extends State<dictionary> {

  @override

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dic_word()));
                      },
                      splashColor: Colors.black26,
                      child: IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(mainAxisSize: MainAxisSize.min, children: [
                            Image.asset(
                              'assets/images/scrabble.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'قاموس الكلمات',
                              style: TextStyle(color: Colors.black),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dic_numbers()));
                      },
                      splashColor: Colors.black26,
                      child: IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(mainAxisSize: MainAxisSize.min, children: [
                            Image.asset(
                              'assets/number-blocks.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'قاموس الارقام',
                              style: TextStyle(color: Colors.black),
                            )
                          ]),
                  ),
                ),
              ),
                  ),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}