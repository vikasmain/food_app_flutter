import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
//            width: 200.0,
//            height: 400.0,
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text("Hello from Container",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.none, fontSize: 40.0))));
  }
}
