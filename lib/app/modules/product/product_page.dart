import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/shared/models/product_model.dart';
import 'product_controller.dart';

class ProductPage extends StatefulWidget {
  final String storeName;
  const ProductPage({
    Key key,
    @required this.storeName,
  }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.storeName)),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Modular.to.pushNamed(
              '/purchases',
              arguments: ProductModel(
                id: index,
                name: 'Produto $index',
                price: 3.0 * index,
              ),
            ),
            leading: CircleAvatar(child: Text('P$index')),
            title: Text('Produto $index'),
            subtitle: Text('Melhor Produto!!!'),
          );
        },
      ),
    );
  }
}
