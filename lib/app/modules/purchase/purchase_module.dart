import 'package:modular_navigation_routes/app/modules/purchase/purchase_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/purchase/purchase_page.dart';

class PurchaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PurchaseController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PurchasePage(product: args.data)),
      ];

  static Inject get to => Inject<PurchaseModule>.of();
}
