import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'shopping_cart_controller.dart';

class ShoppingCartPage extends StatefulWidget {
  final String title;
  const ShoppingCartPage({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends ModularState<ShoppingCartPage, ShoppingCartController> {
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
