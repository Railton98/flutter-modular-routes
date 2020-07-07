import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/shared/stores/cart/cart_store.dart';

import 'shopping_cart_controller.dart';
import 'shopping_cart_page.dart';
import 'widgets/carrinho_lista_produtos/carrinho_lista_produtos_controller.dart';
import 'widgets/carrinho_total/carrinho_total_controller.dart';

class ShoppingCartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CarrinhoListaProdutosController(i.get<CartStore>())),
        Bind((i) => CarrinhoTotalController(i.get<CartStore>())),
        Bind((i) => ShoppingCartController()),
      ];

  @override
  List<Router> get routers => [
        Router('/:title', child: (_, args) => ShoppingCartPage(title: args.params['title'])),
      ];

  static Inject get to => Inject<ShoppingCartModule>.of();
}
