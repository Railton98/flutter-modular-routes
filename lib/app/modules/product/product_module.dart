import 'package:modular_navigation_routes/app/modules/product/product_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/product/product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductController()),
      ];

  @override
  List<Router> get routers => [
        Router('/:storeName', child: (_, args) => ProductPage(storeName: args.params['storeName'])),
      ];

  static Inject get to => Inject<ProductModule>.of();
}
