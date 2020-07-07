import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_navigation_routes/app/modules/payment/pages/address_data/address_data_page.dart';
import 'package:modular_navigation_routes/app/modules/payment/pages/payment_data/payment_data_page.dart';
import 'package:modular_navigation_routes/app/modules/payment/pages/payment_success/payment_success_page.dart';
import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

import 'pages/address_data/address_data_controller.dart';
import 'pages/payment_data/payment_data_controller.dart';
import 'pages/payment_success/payment_success_controller.dart';
import 'payment_controller.dart';
import 'payment_page.dart';
import 'stores/payment_store.dart';

class PaymentModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PaymentSuccessController(i.get<PaymentStore>())),
        Bind((i) => PaymentDataController(i.get<PaymentStore>())),
        Bind((i) => AddressDataController(i.get<PaymentStore>())),
        Bind((i) => PaymentStore(i.get<AuthStore>())),
        Bind((i) => PaymentController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PaymentPage()),
        Router("/address", child: (_, args) => AddressDataPage(), transition: TransitionType.rightToLeft),
        Router("/paymentData", child: (_, args) => PaymentDataPage(), transition: TransitionType.rightToLeft),
        Router("/success", child: (_, args) => PaymentSuccessPage()),
      ];

  static Inject get to => Inject<PaymentModule>.of();
}
