import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/product/models/product_model.dart';
import 'package:modular_navigation_routes/app/shared/models/product_cart/product_cart.dart';

part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  final products = ObservableList<ProductCart>();

  void addProductToCart(ProductModel product) {
    final index = products.indexWhere((element) => element.product.id == product.id);

    if (index >= 0) {
      products.elementAt(index).addItem();
    } else {
      products.add(ProductCart(product));
    }
  }

  void removeProductFromCart(ProductModel product) {
    final index = products.indexWhere((element) => element.product.id == product.id);

    if (index > 0) {
      products.removeAt(index);
    }
  }

  @computed
  double get total => products
      .map((item) => double.parse(item.product.price.replaceAll(',', '.')) * item.quantity)
      .reduce((value, element) => value + element);
}
