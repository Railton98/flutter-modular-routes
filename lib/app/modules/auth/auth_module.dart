import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

import 'auth_controller.dart';
import 'auth_page.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AuthController(i.get<AuthStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => AuthPage()),
      ];

  static Inject get to => Inject<AuthModule>.of();
}
