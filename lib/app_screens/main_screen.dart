import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Constants.dart';

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

class ListViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return listView(context);
  }
}

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout Page"),
      ),
      body: Center(
        child: (getTextWidgets(Constants.items)),
      ),
    );
  }
}

Widget getTextWidgets(List<String> strings) {
  List<Widget> list = new List<Widget>();
  for (var i = 0; i < strings.length; i++) {
    list.add(new Text(strings[i]));
  }
  return new Row(children: list);
}

Widget listView(BuildContext context) {
  final foodList = [
    'Burger',
    'Pizza',
    'Pasta',
    'Butter chicken',
    'Macroni',
    'Paneer',
    'Sandwich',
    'Maggi',
    'Burger',
    'Pizza',
    'Icecream',
    'Cold drinks',
    'Sweet',
    'Beverages',
    'Pasta'
  ];
  final foodIcons = [
    Icons.fastfood,
    Icons.local_pizza,
    Icons.restaurant,
    Icons.restaurant_menu,
    Icons.fastfood,
    Icons.room_service,
    Icons.restaurant,
    Icons.restaurant_menu,
    Icons.room_service,
    Icons.local_pizza,
    Icons.restaurant,
    Icons.restaurant_menu,
    Icons.fastfood,
    Icons.local_pizza,
    Icons.room_service,
  ];

  return ListView.builder(
    itemCount: foodList.length,
    itemBuilder: (context, index) {
      return Card(
          child: ListTile(
              leading: Icon(foodIcons[index]),
              title: Text(foodList[index]),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                IconButton(
                    icon: new Icon(Icons.add),
                    color: Colors.green,
                    onPressed: () {
                      addString(foodList[index], Constants.items);
                    }),
                IconButton(
                    icon: new Icon(Icons.remove),
                    color: Colors.red,
                    onPressed: () {
                      getString(foodList[index], Constants.items);
                    }),
              ])));
    },
  );
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
