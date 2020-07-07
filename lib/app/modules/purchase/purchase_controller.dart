import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/product/models/product_model.dart';
import 'package:modular_navigation_routes/app/shared/stores/cart/cart_store.dart';

part 'purchase_controller.g.dart';

class PurchaseController = _PurchaseControllerBase with _$PurchaseController;

abstract class _PurchaseControllerBase with Store {
  final CartStore _cartStore;

  _PurchaseControllerBase(this._cartStore);

  @action
  void addToCart(ProductModel produto) {
    _cartStore.addProductToCart(produto);
  }
}
