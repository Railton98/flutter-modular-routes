import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/modules/payment/models/payment_model.dart';
import 'package:modular_navigation_routes/app/modules/payment/stores/payment_store.dart';

part 'address_data_controller.g.dart';

class AddressDataController = _AddressDataControllerBase with _$AddressDataController;

abstract class _AddressDataControllerBase extends Disposable with Store {
  final PaymentStore _paymentStore;

  _AddressDataControllerBase(this._paymentStore);

  @computed
  PaymentModel get model => _paymentStore.payment;

  var streetController = TextEditingController();
  var numberController = TextEditingController();

  @action
  void next() {
    model.street = streetController.text;
    model.number = numberController.text;

    Modular.link.pushNamed("/paymentData", arguments: model);
  }

  @override
  void dispose() {
    streetController.dispose();
    numberController.dispose();
  }
}
