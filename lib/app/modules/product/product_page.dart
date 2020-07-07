import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'product_controller.dart';

class ProductPage extends StatefulWidget {
  final String storeName;
  final String logo;
  final String storeId;

  const ProductPage({Key key, @required this.storeName, this.logo, this.storeId}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/${widget.logo}"),
            ),
            SizedBox(
              width: 20,
            ),
            Text(widget.storeName),
          ],
        ),
      ),
      floatingActionButton: Observer(builder: (_) {
        if (controller.isLogged) {
          return FloatingActionButton(
            onPressed: () {
              Modular.to.pushNamed("/purchases/shopping_cart/vindo da compra");
            },
            child: Icon(Icons.shopping_cart),
          );
        } else {
          return FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              Modular.to.pushNamed("/login");
            },
            child: Icon(Icons.person),
          );
        }
      }),
      body: Observer(
        builder: (_) {
          return GridView.builder(
            itemCount: controller.produtos?.length ?? 0,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: .7),
            itemBuilder: (_, index) {
              var current = controller.produtos[index];

              return InkWell(
                onTap: () {
                  Modular.to.pushNamed("/purchases", arguments: current);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: NetworkImage("${current.image}"), fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    current.name,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "R\$ ${current.price}",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "R\$ ${current.price}",
                                  style: TextStyle(
                                    color: Colors.red[300],
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${current.description}",
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
