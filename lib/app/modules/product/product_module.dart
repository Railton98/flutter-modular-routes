import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

import 'repositories/product_repository.dart';
import 'package:dio/dio.dart';
import 'package:modular_navigation_routes/app/modules/product/product_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/product/product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductRepository(Dio())),
        Bind(
          (i) => ProductController(i.get<ProductRepository>(), i.args.params['storeId'], i.get<AuthStore>()),
          singleton: false,
        ),
      ];

  @override
  List<Router> get routers => [
        Router(
          '/:storeName/:logo/:storeId',
          child: (_, args) => ProductPage(
            storeName: args.params['storeName'],
            logo: args.params['logo'],
            storeId: args.params['storeId'],
          ),
          transition: TransitionType.fadeIn,
        ),
      ];

  static Inject get to => Inject<ProductModule>.of();
}
