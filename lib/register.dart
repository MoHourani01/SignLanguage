import 'package:flutter/material.dart';
import 'package:testt01/login.dart';
import 'package:testt01/navigationBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class regester extends StatefulWidget {
  @override
  State<regester> createState() => _regesterState();
}

class _regesterState extends State<regester> {
  final _EmailController = TextEditingController();
  final _passController = TextEditingController();
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  String errorMessage = '';
  String errorMessageEmpty = '';


  CollectionReference users = FirebaseFirestore.instance.collection('userinfo');

  @override
  void initState() {
    super.initState();
  }

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
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Text('انشاء حساب',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                    ),
                      child: TextFormField(
                        controller: _fnameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                            labelText: 'الاسم الاول',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),

                          )
                      ),
                    ),
                  ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[ BoxShadow(
                            color: Color(0xff7bbcd4).withOpacity(0.1),
                            blurRadius: 15
                        )]
                    ),
                    child: TextFormField(
                      controller: _lnameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          labelText: 'الاسم الأخير',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[ BoxShadow(
                            color: Color(0xff7bbcd4).withOpacity(0.1),
                            blurRadius: 15
                        )]
                    ),
                    child: TextFormField(
                        controller: _EmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          labelText: 'بريدك الالكتروني',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[ BoxShadow(
                            color: Color(0xff7bbcd4).withOpacity(0.1),
                            blurRadius: 15
                        )]
                    ),
                    child: TextFormField(
                      controller: _passController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true, // Set obscureText property to true
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                        labelText: 'كلمة المرور الجديدة ',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(errorMessage, style: TextStyle(color: Colors.red)),
                    Text('يجب أن تكون كلمة المرور مكونة من 6 خانات وأكثر', style: TextStyle(color: Colors.white , fontSize: 10),),
                                      ],
                ),
                Text(errorMessageEmpty, style: TextStyle(color: Colors.red)),

                SizedBox(height: 10,),
                MaterialButton(
                  onPressed: () async {
                    String email = _EmailController.text;
                    String password = _passController.text;

                    // Validate email and password
                    if (email.isEmpty || password.isEmpty) {
                      setState(() {
                        errorMessageEmpty = 'يجب أن لا تكون كلمة المرور أو البريد الالكتروني فارغ ..';
                      });
                      return; // Exit the onPressed method if validation fails
                    }

                    try {
                      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                      );

                      // Save user data in Firestore
                      if (userCredential != null) {
                        Map<String, String> dataToSave = {
                          'fname': _fnameController.text,
                          'lname': _lnameController.text,
                          'email': email,
                          'Password' : password,
                        };
                        await users.add(dataToSave);

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => navigate()),
                        );
                      }
                    } catch (error) {
                      setState(() {
                        errorMessage = 'البريد الالكتروني أو كلمة المرور خاطئة .. الرجاء المحاولة مرة أخرى';
                      });

                    }
                  },
                  color: Colors.white,
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff7bbcd4),
                    ),
                  ),
                ),
               // SizedBox(height: 20,),
              ]
    ),
          ),
      ),
    ));
  }
}