import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/product/models/product_model.dart';

part 'product_cart.g.dart';

class ProductCart = _ProductCartBase with _$ProductCart;

abstract class _ProductCartBase with Store {
  @observable
  ProductModel product;

  @observable
  int quantity;

  @action
  void addItem() => quantity++;

  @action
  void removeItem() => quantity--;

  _ProductCartBase(this.product, this.quantity) : assert(product != null, 'Produto informado não pode ser null');
}
