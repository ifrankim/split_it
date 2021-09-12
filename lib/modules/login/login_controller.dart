import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/model/user_model.dart';

class LoginController {
  UserModel? user;
  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );
    try {
      final account = await _googleSignIn.signIn();
      user = UserModel.googleParse(account!);
      print(user);
    } catch (error) {
      print(error);
    }
  }
}
