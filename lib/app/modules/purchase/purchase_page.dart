import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'purchase_controller.dart';

class PurchasePage extends StatefulWidget {
  final String title;
  const PurchasePage({Key key, this.title = "Purchase"}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState
    extends ModularState<PurchasePage, PurchaseController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
