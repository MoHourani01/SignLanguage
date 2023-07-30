import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:testt01/AdminPage.dart';
import 'package:testt01/SplashScreen.dart';
import 'package:testt01/dictionary_list_numbers.dart';
import 'package:testt01/dictionary_list_words.dart';
import 'package:testt01/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testt01/navigationBar.dart';
import 'package:testt01/register.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
      ),
      home: navigate(),
    );
  }
}
