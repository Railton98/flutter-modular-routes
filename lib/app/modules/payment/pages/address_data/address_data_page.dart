import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'address_data_controller.dart';

class AddressDataPage extends StatefulWidget {
  final String title;
  const AddressDataPage({Key key, this.title = "Dados Endereco"}) : super(key: key);

  @override
  _AddressDataPageState createState() => _AddressDataPageState();
}

class _AddressDataPageState extends ModularState<AddressDataPage, AddressDataController> {
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
                  controller: controller.streetController,
                  decoration: InputDecoration(labelText: "Rua"),
                ),
                TextFormField(
                  controller: controller.numberController,
                  decoration: InputDecoration(labelText: "Numero"),
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
