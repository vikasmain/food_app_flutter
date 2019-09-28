import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'Constants.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout Page')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: getTextWidgets(Constants.items)
      )
      );
  }
}
