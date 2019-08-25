import 'package:flutter/material.dart';
import 'app_screens/home.dart';

void main() => runApp(MyFlutterAppComponent());

class MyFlutterAppComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      home: Home(),
    );
  }
}
