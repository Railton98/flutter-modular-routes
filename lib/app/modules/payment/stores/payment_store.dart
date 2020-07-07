import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/payment/models/payment_model.dart';
import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

part 'payment_store.g.dart';

class PaymentStore = _PaymentStoreBase with _$PaymentStore;

abstract class _PaymentStoreBase with Store {
  final AuthStore _authStore;

  _PaymentStoreBase(this._authStore) {
    payment = PaymentModel()..name = _authStore.user.email;
  }

  @observable
  PaymentModel payment;
}
