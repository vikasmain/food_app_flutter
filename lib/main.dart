import 'package:flutter/material.dart';

void main() => runApp(MyFlutterAppComponent());

class MyFlutterAppComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // to hide debugDialog
        title: "Food App",
        home: Scaffold(
          appBar: AppBar(title: Text("Food App")),
          body: Material(
            // we can omit new in new dart version
            color: Colors.lightBlueAccent,
            child: Center(
                child: Text("Hello From Material Component",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic))),
          ),
        ));
  }
}
