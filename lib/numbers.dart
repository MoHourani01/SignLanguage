import 'package:testt01/camera2.dart';
import 'package:flutter/material.dart';

class numbers extends StatefulWidget {
  @override
  _numbers createState() => _numbers();
}

class _numbers extends State<numbers> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return  Container(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>camera2()));
                },
                splashColor: Colors.black26,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min, children: [
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
                        'ترجمة الارقام',
                        style: TextStyle(color: Colors.black),
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

