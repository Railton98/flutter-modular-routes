import 'package:mobx/mobx.dart';

part 'shopping_cart_controller.g.dart';

class ShoppingCartController = _ShoppingCartControllerBase
    with _$ShoppingCartController;

abstract class _ShoppingCartControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
