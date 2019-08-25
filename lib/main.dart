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
              child: Row(
            children: <Widget>[

              Expanded(child: Text("column1",textDirection: TextDirection.ltr,)),
              Text("column2",textDirection: TextDirection.ltr,),
              Expanded(child: Text("column2",textDirection: TextDirection.ltr,),
              )
            ],
    )
          ),
        ))
    );
  }

  String getTextForHomeScreen() {
    return "Get Material Component From a method";
  }
}
