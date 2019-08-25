import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Food App", // title of our application in our device
    home: Material( // we can omit new in new dart version
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text("Hello From Material Component",
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.white,fontSize: 40.0,fontStyle: FontStyle.italic)
        )
      ),
    ),
  ));
}
