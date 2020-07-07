import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/product/models/product_model.dart';
import 'package:modular_navigation_routes/app/shared/models/product_cart/product_cart.dart';
import 'package:modular_navigation_routes/app/shared/stores/cart/cart_store.dart';

part 'carrinho_lista_produtos_controller.g.dart';

class CarrinhoListaProdutosController = _CarrinhoListaProdutosControllerBase with _$CarrinhoListaProdutosController;

abstract class _CarrinhoListaProdutosControllerBase with Store {
  final CartStore _cartStore;

  _CarrinhoListaProdutosControllerBase(this._cartStore);

  @computed
  ObservableList<ProductCart> get products => _cartStore.products;

  void removerProduto(ProductModel produto) {
    _cartStore.removeProductFromCart(produto);
  }
}
