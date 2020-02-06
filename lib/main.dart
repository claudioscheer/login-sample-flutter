import 'package:flutter/material.dart';
import 'startup.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample with Login',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: StartupPage(),
    );
  }
}
