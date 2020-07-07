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
          itemCount: controller.products?.length ?? 0,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final current = controller.products[index];

            return Card(
              margin: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    current.product.image,
                  ),
                ),
                title: Text(current.product.name),
                subtitle: Text("R\$ ${current.product.price}"),
                trailing: Container(
                  width: 120,
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.remove_circle, color: Colors.red[400]),
                          onPressed: () {
                            if (current.quantity == 1) {
                              controller.removerProduto(current.product);
                            } else {
                              current.removeItem();
                            }
                          }),
                      Observer(builder: (BuildContext context) {
                        return Expanded(child: Text("${current.quantity}", textAlign: TextAlign.center));
                      }),
                      IconButton(
                        icon: Icon(Icons.add_circle, color: Colors.blue[400]),
                        onPressed: () => current.addItem(),
                      ),
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
