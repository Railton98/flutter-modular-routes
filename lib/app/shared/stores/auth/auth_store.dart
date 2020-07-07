import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/shared/models/user/user_model.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @observable
  UserModel user;

  @action
  void setUser(UserModel value) => user = value;

  @computed
  bool get isLogged => user?.email != null && user?.password != null;
}
