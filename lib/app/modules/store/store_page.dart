import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'store_controller.dart';

class StorePage extends StatefulWidget {
  final String title;
  const StorePage({Key key, this.title = "Store"}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends ModularState<StorePage, StoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Modular.to.pushNamed('/products/Loja $index'),
            title: Text('Loja $index'),
            subtitle: Text('Melhor Loja!!!'),
          );
        },
      ),
    );
  }
}
