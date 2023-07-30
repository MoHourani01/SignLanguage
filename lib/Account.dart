import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login.dart';

class account extends StatefulWidget {
  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  late User _user;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  Future<void> _getUserData() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    setState(() {
      _user = currentUser!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/account.png',
                    fit: BoxFit.fill,
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 80),
                  Container(
                    child: Text(
                      _user != null ? _user.email ?? '' : '',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xff5c9cbc)),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 70),
                  MaterialButton(
                    color: Colors.transparent,
                    height: 40,
                    minWidth: 200,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => login()),
                      );
                    },
                    child: Text(
                      'تسجيل لخروج',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
