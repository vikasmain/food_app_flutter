import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Food items List';

    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Image.asset("images/download.jpeg",
                  width: 40.0, height: 40.0, fit: BoxFit.cover),
              title: Text('Panner'),
              subtitle: Text("with Matar"),
              onTap: () {
                return Dialog(context,"Pressed Panner Item");
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood, size: 40.0),
              title: Text('Burger'),
            ),
            ListTile(
              leading: Image.asset("images/download.jpeg",
                  width: 40.0, height: 40.0, fit: BoxFit.cover),
              title: Text('Chaat/Tikki'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Dialog(context,"clicked fab");
          },
          child: Icon(Icons.add),
          tooltip: 'Add One More Item',
        ),
      ),
    );
  }
}

void Dialog(BuildContext context, String text) {
  var alertDialog = AlertDialog(title: Text(text));
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
