import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/HomeForm.dart';
import 'package:flutter_application_1/Screens/LoginForm.dart';
import 'package:flutter_application_1/Screens/SignupForm.dart';
import 'package:flutter_application_1/Screens/splashscreen.dart';
import 'package:sqflite/sqflite.dart';

import 'Screens/LoginForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with Signup',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: SplashScreen(),
    );
  }
}
