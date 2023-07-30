import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class adminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(

      stream: FirebaseFirestore.instance.collection('userinfo').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        // Data snapshot from Firestore
        final data = snapshot.data;

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => login()),
              );
            },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black54,
              ),
            ),
            backgroundColor: Color(0xff5c9cbc),
          ),
          backgroundColor: Colors.white,

            body: ListView.builder(
          itemCount: data?.docs.length,
          itemBuilder: (context, index) {
            final document = data?.docs[index];

            // Access specific fields from the document
            final fname = document!['fname'];
            final lname = document!['lname'];
            final email = document!['email'];
            final passw = document!['Password'];
    return  Container(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      ),
      child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Name : ' ,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                              decoration: TextDecoration.none
                                          ),
                                        ),
                                        Text(
                                          fname ,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                              decoration: TextDecoration.none
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    child: Text(
                                        lname,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 20,),

                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text(
                                      'Email : ' ,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    Text(
                                        email,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                          decoration: TextDecoration.none
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text(
                                      'Password : ' ,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    Text(
                                      passw,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          decoration: TextDecoration.none
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),                          ],
                          ),
    ),
                ],
              ),
            )
    );
          },
        ));
      },
    );
  }
}
