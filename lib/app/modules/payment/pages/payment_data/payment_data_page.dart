import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'payment_data_controller.dart';

class PaymentDataPage extends StatefulWidget {
  final String title;

  const PaymentDataPage({Key key, this.title = "Dados Pagamento"}) : super(key: key);

  @override
  _PaymentDataPageState createState() => _PaymentDataPageState();
}

class _PaymentDataPageState extends ModularState<PaymentDataPage, PaymentDataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Cartao"),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "CVV"),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: RaisedButton(
                color: Theme.of(context).primaryColor, child: Text("Continuar"), onPressed: controller.next),
          ),
        ],
      ),
    );
  }
}
