import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // to hide debugDialog
        title: "Food App",
        home: Scaffold(
            appBar: AppBar(title: Text("Food App")), body: MainScreen()));
  }
}
