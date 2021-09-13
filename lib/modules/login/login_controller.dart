import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/model/user_model.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  UserModel? user;

  VoidCallback onUpdate;
  LoginController({
    required this.onUpdate,
  });

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
    try {
      state = LoginStateLoading();
      onUpdate();
      final account = await _googleSignIn.signIn();
      user = UserModel.googleParse(account!);
      state = LoginStateSuccess(user: user!);
      onUpdate();
    } catch (error) {
      state = LoginStateError(message: error.toString());
      onUpdate();
    }
  }
}
