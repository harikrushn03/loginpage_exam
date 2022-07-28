import 'package:flutter/material.dart';
import 'package:loginpage_exam/exam/splash.dart';
import 'package:loginpage_exam/exam/login.dart';
import 'package:loginpage_exam/exam/reg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    // debug
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Loginpage(),
    );
  }
}

