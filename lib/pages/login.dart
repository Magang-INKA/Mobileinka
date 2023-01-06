import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
// import 'package:flutterinka/pages/dashboard.dart';
//import 'package:flutterinka/pages/home.dart';
import 'package:flutterinka/widgets/navbar.dart';
// import 'package:flutter_login/theme.dart';

const users = {
  'admin@gmail.com': '12345',
  'operator@gmail.com': '12345',
};

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  // Future<String?> _signupUser(SignupData data) {
  //   debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     return null;
  //   });
  // }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'SIMOCO',
      logo: const AssetImage('assets/images/seamoco.png'),
      onLogin: _authUser,
      //onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const Navbar(),
        ));
      },
      theme: LoginTheme(
        //primaryColor: Colors.blue
        primaryColor: Color(0xFF0D214F),
        buttonTheme: const LoginButtonTheme(
          backgroundColor: Colors.white,
          elevation: 5.0
        ),
        buttonStyle: const TextStyle(
          color: Colors.black
        )
      ),
      onRecoverPassword: _recoverPassword,

    );
  }
}
