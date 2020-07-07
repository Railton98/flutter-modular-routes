import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/product/models/product_model.dart';

part 'product_cart.g.dart';

class ProductCart = _ProductCartBase with _$ProductCart;

abstract class _ProductCartBase with Store {
  @observable
  ProductModel product;

  @observable
  int _quantity = 1;

  @computed
  int get quantity => _quantity;

  @action
  void addItem() => _quantity++;

  @action
  void removeItem() => _quantity--;

  _ProductCartBase(this.product) : assert(product != null, 'Produto informado não pode ser null');
}
