import 'package:flutter/material.dart';
import 'package:sample_login/widgets/LoginForm.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
