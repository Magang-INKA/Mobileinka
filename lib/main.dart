import 'package:flutter/material.dart';
import 'package:flutterinka/pages/add_location.dart';
import 'package:flutterinka/pages/change_email.dart';
import 'package:flutterinka/pages/change_phone.dart';
import 'package:flutterinka/pages/change_password.dart';
// import 'package:flutterinka/pages/dashboard.dart';
import 'package:flutterinka/pages/login.dart';
import 'package:flutterinka/pages/profiles.dart';
import 'package:flutterinka/pages/qr.dart';
//import 'package:flutterinka/pages/qr.dart';
// import 'package:flutterinka/pages/register.dart';
import 'package:flutterinka/pages/home.dart';
import 'package:flutterinka/pages/data_container.dart';
import 'package:flutterinka/pages/splashscreen.dart';
import 'package:flutterinka/widgets/navbar.dart';

void main() {runApp(new MyApp());}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override

  //12
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'ss',
      routes: {
        'login': (context) => const LoginPage(),
        'ss': (context) => SplashScreenPage(),
        // 'register' : (context) => Register(),
        'home' : (context) => HomePage(),
        'container':(context) => const DataContainer(),
        'profiles' : (context) => const ProfilePage(),
        'changeEmail' : (context) => const PageEmail(),
        'changePhone' : (context) => const PagePhone(),
        'changePassword': (context) => const PagePassword(),
        'qrcode' : (context) => const BarcodePage(),
        'form' : (context) => const FormLocation(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xFFC41A3B),
        primaryColorLight: const Color(0xFFFBE0E6),
        //accentColor: const Color(0xFF1B1F32),
      ),
      home: const Navbar (),
    );
  }
}

