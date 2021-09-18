import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/model/user_model.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    return UserModel(email: "ldfjgldf@asd.com", id: "12");
  }
}

void main() {
  late LoginController controller;

  setUp(() {
    controller =
        LoginController(onUpdate: () {}, loginService: LoginServiceMock());
  });
  test("Testando o Google Signin retornando Success", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
  });
}
