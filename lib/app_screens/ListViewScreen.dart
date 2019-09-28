import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'Constants.dart';

class ListViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return listView(context);
  }
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
