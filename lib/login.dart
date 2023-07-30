import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testt01/AdminPage.dart';
import 'package:testt01/register.dart';
import 'navigationBar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  String errorMessage = '';
  final FirebaseAuth _auth = FirebaseAuth.instance;


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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Image.asset(
                  'assets/images/splash.png',
                  fit: BoxFit.fill,
                  width: 230,
                  height: 200,
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow:[ BoxShadow(
                          color: Color(0xff7bbcd4).withOpacity(0.1),
                        blurRadius: 15
                      )]
                    ),
                       child :TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          labelText: 'البريد الالكتروني',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),

                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow:[ BoxShadow(
                            color: Color(0xff7bbcd4).withOpacity(0.1),
                            blurRadius: 15
                        )]
                    ),
                    child: TextFormField(
                      obscureText: true,
                      controller: _passController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                        labelText: 'كلمة المرور',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                    ),
                  ),
                ),
                Text(errorMessage, style: TextStyle(color: Colors.red)),
                SizedBox(height: 10,),
                MaterialButton(
                  color: Colors.white,
                  height: 40,
                  minWidth: 300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: () {
                    String email = _emailController.text;
                    String password = _passController.text;

                    if (email == 'admin1@gmail.com' && password == '123123') {
                      // Navigate to the next screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => adminPage(),
                        ),
                      );
                    } else  {
                      // Show an error message
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => navigate(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        color: Color(0xff5c9cbc),
                        fontSize: 20
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 120.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            _navigateToNextScreen(context);
                          },
                          child: Text(
                            'انشاء حساب',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'ليس لديك حساب ؟',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
    ],
            ),
          ),
        ),
    ));
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => regester()));
  }
}
