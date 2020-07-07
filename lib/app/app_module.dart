import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/app_controller.dart';
import 'package:modular_navigation_routes/app/app_widget.dart';

import 'modules/auth/auth_module.dart';
import 'modules/payment/payment_module.dart';
import 'modules/product/product_module.dart';
import 'modules/purchase/purchase_module.dart';
import 'modules/store/store_module.dart';
import 'shared/stores/auth/auth_store.dart';
import 'shared/stores/cart/cart_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => AuthStore()),
        Bind((i) => CartStore()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: StoreModule(), transition: TransitionType.fadeIn),
        Router("/login", module: AuthModule(), transition: TransitionType.fadeIn),
        Router('/products', module: ProductModule(), transition: TransitionType.rightToLeft),
        Router('/purchases', module: PurchaseModule(), transition: TransitionType.fadeIn),
        Router("/payment", module: PaymentModule(), transition: TransitionType.fadeIn),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
