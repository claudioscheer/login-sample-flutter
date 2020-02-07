import 'package:flutter/material.dart';
import 'package:sample_login/screens/home.dart';
import 'package:sample_login/screens/login.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        if (false) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
            ModalRoute.withName('/home'),
          );
        } else {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
            ModalRoute.withName('/login'),
          );
        }
      });
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            new Container(
              margin: const EdgeInsets.only(top: 16),
              child: Text(
                'Loading app...',
                style: Theme.of(context).textTheme.headline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
