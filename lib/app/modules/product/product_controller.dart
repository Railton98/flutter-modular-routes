import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

import 'models/product_model.dart';
import 'repositories/product_repository.dart';

part 'product_controller.g.dart';

class ProductController = _ProductControllerBase with _$ProductController;

abstract class _ProductControllerBase with Store {
  final AuthStore _authStore;

  final ProductRepository repository;

  _ProductControllerBase(this.repository, String idLoja, this._authStore) {
    init(int.parse(idLoja));
  }

  @computed
  bool get isLogged => _authStore.isLogged;

  @observable
  ObservableList<ProductModel> produtos;

  @action
  Future init(int idLoja) async {
    produtos = (await repository.obterProdutos(idLoja)).asObservable();
  }
}
