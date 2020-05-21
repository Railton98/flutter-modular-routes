import 'package:modular_navigation_routes/app/modules/purchase/pages/shopping_cart/shopping_cart_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/purchase/pages/shopping_cart/shopping_cart_page.dart';

class ShoppingCartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ShoppingCartController()),
      ];

  @override
  List<Router> get routers => [
        Router(
          '/:title',
          child: (_, args) => ShoppingCartPage(title: args.params['title']),
        ),
      ];

  static Inject get to => Inject<ShoppingCartModule>.of();
}
