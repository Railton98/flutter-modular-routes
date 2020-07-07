import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'carrinho_lista_produtos_controller.dart';

class CarrinhoListaProdutosWidget extends StatefulWidget {
  @override
  _CarrinhoListaProdutosWidgetState createState() => _CarrinhoListaProdutosWidgetState();
}

class _CarrinhoListaProdutosWidgetState
    extends ModularState<CarrinhoListaProdutosWidget, CarrinhoListaProdutosController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        if (controller.products == null) {
          return CircularProgressIndicator();
        }

        return ListView.builder(
          shrinkWrap: true,
          itemCount: controller.products.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(5),
              child: ListTile(
                leading: Image.network(
                  controller.products[index].product.image,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(controller.products[index].product.name),
                subtitle: Text("R\$ ${controller.products[index].product.price}"),
                trailing: Container(
                  width: 120,
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.remove_circle),
                          onPressed: () {
                            if (controller.products[index].quantity == 1) {
                              controller.removerProduto(controller.products[index].product);
                            } else {
                              controller.products[index].removeItem();
                            }
                          }),
                      Observer(
                        builder: (BuildContext context) {
                          return Expanded(
                              child: Text(
                            "${controller.products[index].quantity}",
                            textAlign: TextAlign.center,
                          ));
                        },
                      ),
                      IconButton(
                          icon: Icon(Icons.add_circle),
                          onPressed: () {
                            controller.products[index].addItem();
                          })
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
