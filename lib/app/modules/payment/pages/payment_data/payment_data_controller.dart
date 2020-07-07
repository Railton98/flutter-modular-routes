import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/payment/models/payment_model.dart';
import 'package:modular_navigation_routes/app/modules/payment/stores/payment_store.dart';

part 'payment_data_controller.g.dart';

class PaymentDataController = _PaymentDataControllerBase with _$PaymentDataController;

abstract class _PaymentDataControllerBase extends Disposable with Store {
  final PaymentStore _paymentStore;

  _PaymentDataControllerBase(this._paymentStore);

  @computed
  PaymentModel get model => _paymentStore.payment;

  var cartController = TextEditingController();
  var cvvController = TextEditingController();

  @action
  void next() {
    model.cart = cartController.text;
    model.cvv = cvvController.text;

    Modular.link.pushNamed("/success", arguments: model);
  }

  @override
  void dispose() {
    cartController.dispose();
    cvvController.dispose();
  }
}
