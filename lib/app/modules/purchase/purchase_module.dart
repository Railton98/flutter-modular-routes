import 'package:modular_navigation_routes/app/modules/purchase/purchase_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/purchase/purchase_page.dart';
import 'package:modular_navigation_routes/app/shared/stores/cart/cart_store.dart';

import 'pages/shopping_cart/shopping_cart_module.dart';

class PurchaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PurchaseController(i.get<CartStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PurchasePage(productModel: args.data)),
        Router('/shopping_cart', module: ShoppingCartModule(), transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<PurchaseModule>.of();
}
