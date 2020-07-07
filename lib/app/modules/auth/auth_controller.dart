import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:modular_navigation_routes/app/shared/models/user/user_model.dart';
import 'package:modular_navigation_routes/app/shared/stores/auth/auth_store.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase extends Disposable with Store {
  final AuthStore _authStore;
  _AuthControllerBase(this._authStore);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @action
  void entrar() {
    if (emailController.text != null &&
        emailController.text != "" &&
        passwordController.text != null &&
        passwordController.text != "") {
      _authStore.setUser(UserModel(emailController.text, passwordController.text));
      Modular.to.pushReplacementNamed("/");
    } else {
      Modular.to.showDialog(
        builder: (context) => AlertDialog(
          content: Text("Voce nao preencheu todos os dados!!!"),
          title: Text("Oppss..."),
        ),
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
