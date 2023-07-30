import 'package:flutter/material.dart';

class dic_word extends StatelessWidget {
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/3adb.jpeg',
                          fit: BoxFit.fill,),
                      ),
                      SizedBox(width: 190,),
                      Text('غاضب',
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/5bz.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 210,),
                      Text("خبز",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/5shab.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("خشب",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/6rih.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("طرح",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/7adth.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("حادث",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/7alwa.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("حلوى",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/7da2.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("حذاء",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/8ismah.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("قسمة",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/86aar.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("قطار",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/a3la.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("اعلى",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/a7ruf heja2.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 130,),
                      Text("أحرف هجاء",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/af3a.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("أفعى",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/al3alam.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("العالم",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/alf.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 210,),
                      Text("ألف",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/aljaw.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 210,),
                      Text("الجو",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/amanah.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 210,),
                      Text("امانة",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/assfal.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("أسفل",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/b6a6s.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("بطاطا",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/b6ee2.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("بطيء",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/bd2.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 230,),
                      Text("بدأ",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/e3l8.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("اغلاق",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/efta7.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 210,),
                      Text("افتح",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/el5amees.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 170,),
                      Text("الخميس",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/el5lf.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("الخلف",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/el8dmeen.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 180,),
                      Text("القدمين",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/elakbbar blsin.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 130,),
                      Text("الأكبر بالسن",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/elarbi3a2.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("الاربعاء",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/elassgar blsin.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 130,),
                      Text("الأصغر بالسن",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/eljuma3a.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("الجمعة",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/elnaas.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("الناس",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/elsabt.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("السبت",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/eltaly.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 200,),
                      Text("التالي",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/elyadeen.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("اليدين",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/esbuu3.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("اسبوع",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/ethneen.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 190,),
                      Text("اثنين",
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
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 110,
                        height: 110,
                        child: Image.asset('assets/words/fe el5arj.jpeg',
                          fit: BoxFit.fitHeight,),
                      ),
                      SizedBox(width: 140,),
                      Text("في الخارج",
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
