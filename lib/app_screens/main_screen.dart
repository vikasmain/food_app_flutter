import 'package:flutter/material.dart';
import 'list_view_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Center(
                    child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Text("Welcome to Food App",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      )),
                )),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Burger",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Without Onion",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          color: Colors.white),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Pizza",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "Without Cheese",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          color: Colors.white),
                    )),
                  ],
                ),
                ImageAsset(),
                AddButton(),
                ListViewButton(),
                InfiniteListViewButton()
              ],
            )));
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/download.jpeg');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.black,
          elevation: 10.0,
          child: Text("Press to See Dialog Item",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          onPressed: () {
            Dialog(context);
          }),
    );
  }
}

void Dialog(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Item Added Successfully"),
    content: Text("Enjoy your food"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

class ListViewButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
          color: Colors.black,
          elevation: 10.0,
          child: Text("Press to See ListView",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListScreen()),
            );
          }),
    );
  }
}

class InfiniteListViewButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
          color: Colors.black,
          elevation: 10.0,
          child: Text("Press to See Infinite ListView",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfiniteListView()),
            );
          }),
    );
  }
}

List<String> getListElements() {
  var items = List<String>.generate(50, (counter) => "Food Item:- $counter");
  return items;
}

class InfiniteListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listItems = getListElements();
    return Center(
        child: Scaffold(
            appBar: AppBar(
              title: Text("InfiniteListView"),
            ),
            body: ListView.builder(itemBuilder: (context, index) {
              ListTile(
                leading: Icon(Icons.fastfood),
                title: Text(listItems[index]),
                onTap: () {
                  debugPrint('${listItems[index]} was tapped');
                },
              );
            })));
  }
}
