import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shopping_cart_controller.dart';
import 'widgets/carrinho_lista_produtos/carrinho_lista_produtos_widget.dart';
import 'widgets/carrinho_total/carrinho_total_widget.dart';

class ShoppingCartPage extends StatefulWidget {
  final String title;
  const ShoppingCartPage({Key key, @required this.title}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends ModularState<ShoppingCartPage, ShoppingCartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de Compras"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            CarrinhoListaProdutosWidget(),
            Divider(),
            CarrinhoTotalWidget(),
            Divider(),
            Container(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Modular.to.pushNamed("/payment");
                },
                child: Text("Ir para Pagamento"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
