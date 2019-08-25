import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightBlueAccent,
        alignment: Alignment.center,
        child: Text("Hello from Container", textDirection: TextDirection.ltr));
  }
}
