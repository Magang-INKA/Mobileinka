import 'package:flutter/material.dart';
import 'package:flutterinka/pages/login.dart';
import 'dart:async';

import 'package:flutterinka/widgets/navbar.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D214F),
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/images/seamoco.png",
            width: 300.0,
          ),
        ),
      ),
    );
  }
}