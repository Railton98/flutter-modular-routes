import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import 'store_controller.dart';

class StorePage extends StatefulWidget {
  final String title;
  const StorePage({Key key, this.title = "Loja"}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends ModularState<StorePage, StoreController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Observer(builder: (_) {
        if (controller.isLogged) {
          return FloatingActionButton(
            onPressed: () {
              Modular.to.pushNamed("/purchases/shopping_cart/vindo da Loja");
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
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 250,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/logo_bwolf.png",
                  height: 150,
                ),
                Text("Think like a wolf", style: GoogleFonts.chelseaMarket(fontSize: 30))
              ],
            ),
          ),
          Expanded(
            child: Observer(builder: (_) {
              if (controller.lojas == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (controller.lojas.length == 0) {
                return Center(
                  child: Text("Nenhum dado encontrado!!"),
                );
              }

              return ListView.builder(
                itemCount: controller.lojas.length,
                itemBuilder: (BuildContext context, int index) {
                  var currentItem = controller.lojas[index];

                  return ListTile(
                    onTap: () {
                      Modular.to.pushNamed("/products/${currentItem.name}/${currentItem.logo}/${currentItem.id}");
                    },
                    title: Text(
                      "${currentItem.name}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      "Melhor Loja",
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/${currentItem.logo}"),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
