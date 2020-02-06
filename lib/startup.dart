import 'package:flutter/material.dart';

class StartupPage extends StatefulWidget {
  @override
  _StartupPageState createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    // _setLoggedIn();
  }

  void _setLoggedIn() {
    setState(() {
      _isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
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
