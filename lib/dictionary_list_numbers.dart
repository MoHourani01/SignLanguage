import 'package:flutter/material.dart';

class dic_numbers extends StatelessWidget {
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
        appBar: AppBar(
          backgroundColor:Color(0xff5c9cbc),
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/1.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text('واحد',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                      ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/2.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text("اثنان",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/3.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text("ثلاثة",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/4.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text("اربعة",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/5.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("خمسة",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/6.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text("ستة",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/2.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text("سبعة",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/8.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("ثمانية",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/9.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text("تسعة",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color(0xff5c9cbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff5c9cbc),
                          blurRadius: 7,
                        ),]
                  ),
                  child:
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/numbers/10.png',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 220,),
                      Text("عشرة",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),)
                    ],
                  )),
            ],
          ),
        ),
      ),
    );

  }
}
