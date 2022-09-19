import 'package:flutter/material.dart';
import 'package:flutterinka/pages/login.dart';
import 'package:flutterinka/pages/register.dart';
import 'package:flutterinka/pages/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  @override

  //12
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'login': (context) => Login(),
        'register' : (context) => Register(),
        'home' : (context) => HomePage()
      },
    );
  }
}