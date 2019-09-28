import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Constants.dart';
import 'ListViewScreen.dart';
import 'CheckoutPageScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants.context = context;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food App'),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: showMenuOptions,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        ),
        body: ListViewLayout(),
      ),
    );
  }
}

void showMenuOptions(String choice) {
  if (choice == Constants.settings) {
    print('Settings');
  } else if (choice == Constants.checkout) {
    print(choice);
    Navigator.push(
      Constants.context,
      MaterialPageRoute(builder: (context) => CheckoutPage()),
    );
  }
}

Widget getTextWidgets(List<String> strings) {
  List<Widget> list = new List<Widget>();
  for (var i = 0; i < strings.length; i++) {
    list.add(new Text(strings[i]));
  }
  return new Row(
      children: list);
}

addString(String item, List<String> items) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  items.add(item);
  prefs.setStringList('item', items);
}

getString(String item, List<String> items) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  items.remove(item);
  prefs.setStringList('item', items);
}
