import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/app_controller.dart';
import 'package:modular_navigation_routes/app/app_widget.dart';

import 'modules/product/product_module.dart';
import 'modules/purchase/purchase_module.dart';
import 'modules/store/store_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: StoreModule()),
        Router('/products', module: ProductModule()),
        Router('/purchases', module: PurchaseModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
