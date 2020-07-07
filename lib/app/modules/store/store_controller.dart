import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

import 'models/store_model.dart';
import 'repositories/store_repository.dart';

part 'store_controller.g.dart';

class StoreController = _StoreControllerBase with _$StoreController;

abstract class _StoreControllerBase with Store {
  final AuthStore _authStore;
  final StoreRepository repository;

  _StoreControllerBase(this.repository, this._authStore) {
    init();
  }

  @computed
  bool get isLogged => _authStore.isLogged;

  @observable
  ObservableList<StoreModel> lojas;

  @action
  Future init() async {
    lojas = (await repository.getStores()).asObservable();
  }
}
