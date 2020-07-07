import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'payment_success_controller.dart';

class PaymentSuccessPage extends StatefulWidget {
  final String title;
  const PaymentSuccessPage({Key key, this.title = "Pagamento Sucesso"}) : super(key: key);

  @override
  _PaymentSuccessPageState createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends ModularState<PaymentSuccessPage, PaymentSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Pagamento Finalizado com sucesso ${controller.model.name}!!!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text("Continuar Comprando"),
              onPressed: () {
                Modular.to.popUntil(ModalRoute.withName("/"));
              },
            ),
          ),
        ],
      ),
    );
  }
}
