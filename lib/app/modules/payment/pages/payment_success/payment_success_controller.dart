import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/payment/models/payment_model.dart';
import 'package:modular_navigation_routes/app/modules/payment/stores/payment_store.dart';

part 'payment_success_controller.g.dart';

class PaymentSuccessController = _PaymentSuccessControllerBase with _$PaymentSuccessController;

abstract class _PaymentSuccessControllerBase with Store {
  final PaymentStore _pagamentoStore;

  _PaymentSuccessControllerBase(this._pagamentoStore);

  @computed
  PaymentModel get model => _pagamentoStore.payment;
}
