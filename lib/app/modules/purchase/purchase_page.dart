import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/product/models/product_model.dart';

import 'purchase_controller.dart';

class PurchasePage extends StatefulWidget {
  final ProductModel productModel;
  final String title;

  const PurchasePage({Key key, this.title = "Compra", @required this.productModel}) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends ModularState<PurchasePage, PurchaseController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(widget.productModel.name),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Image.network(
              widget.productModel.image,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productModel.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            Text(
                              " ( 24 )",
                              style: TextStyle(
                                color: Colors.amber,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "R\$ ${widget.productModel.price}",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "R\$ ${widget.productModel.price}",
                              style: TextStyle(
                                color: Colors.red[300],
                                fontSize: 18,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [Expanded(child: Text("${widget.productModel.description}"))],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [Expanded(child: Text("Cod: 0000${widget.productModel.id}"))],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    color: Colors.amber,
                    onPressed: () {
                      controller.addToCart(widget.productModel);

                      Modular.link.popAndPushNamed("/shopping_cart/vindo do compra");
                    },
                    child: Text(
                      "Adicionar ao carrinho".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
