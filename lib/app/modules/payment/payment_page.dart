import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/payment/payment_controller.dart';

import 'models/payment_model.dart';

class PaymentPage extends StatefulWidget {
  final String title;
  const PaymentPage({Key key, this.title = "Dados Comprador"}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends ModularState<PaymentPage, PaymentController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Vamos Precisar de mais Alguns dados!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text("Continuar"),
                onPressed: () {
                  Modular.link.pushNamed("/address", arguments: PaymentModel());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
