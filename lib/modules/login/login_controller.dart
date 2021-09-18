import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_service.dart';

import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/model/user_model.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  UserModel? user;
  final LoginService loginService;
  Function(LoginState state)? onChange;
  VoidCallback onUpdate;
  LoginController({
    required this.onUpdate,
    required this.loginService,
  });

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      update();
      final user = await loginService.googleSignIn();
      state = LoginStateSuccess(user: user);
      update();
    } catch (error) {
      state = LoginStateError(message: error.toString());
      update();
    }
  }

  void update() {
    onUpdate();
    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}
