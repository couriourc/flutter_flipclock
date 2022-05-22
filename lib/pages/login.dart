import 'package:flipclock/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        title: "Welcome",
        onLogin: (LoginData form) {
          //
          $router.navigateTo(context, "/");
        },
        onRecoverPassword: (String name) {
          //
        },
      ),
    );
  }
}
