import 'package:dio/dio.dart';
import 'package:modular_navigation_routes/app/modules/store/repositories/store_repository.dart';
import 'package:modular_navigation_routes/app/modules/store/store_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/store/store_page.dart';
import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

class StoreModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StoreRepository(Dio())),
        Bind((i) => StoreController(i.get<StoreRepository>(), i.get<AuthStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => StorePage(), transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<StoreModule>.of();
}
