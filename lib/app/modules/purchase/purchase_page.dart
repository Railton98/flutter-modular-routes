import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/shared/models/product_model.dart';
import 'purchase_controller.dart';

class PurchasePage extends StatefulWidget {
  final ProductModel product;
  const PurchasePage({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends ModularState<PurchasePage, PurchaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Modular.to.pushNamed('/purchases/shopping_cart/Vindo da Compra'),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(15.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Produto', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                      Text('${widget.product.id} - ${widget.product.name}', style: TextStyle(fontSize: 16.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Preço', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                      Text('R\$ ${widget.product.price}', style: TextStyle(fontSize: 16.0)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
