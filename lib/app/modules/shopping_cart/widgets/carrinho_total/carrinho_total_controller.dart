import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/shared/stores/cart/cart_store.dart';

part 'carrinho_total_controller.g.dart';

class CarrinhoTotalController = _CarrinhoTotalControllerBase with _$CarrinhoTotalController;

abstract class _CarrinhoTotalControllerBase with Store {
  final CartStore _cartStore;

  _CarrinhoTotalControllerBase(this._cartStore);

  @computed
  double get total => _cartStore.total;
}
