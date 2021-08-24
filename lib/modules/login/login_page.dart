import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: AppTheme.textStyles.title,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: ListTile(
                    leading: Text(
                      "😍",
                      style: GoogleFonts.inter(
                          fontSize: 40, fontWeight: FontWeight.w400),
                    ),
                    title: Text(
                      "Faça seu login com as contas abaixo",
                      style: AppTheme.textStyles.button,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SocialButton(
                  imagePath: "assets/images/google-icon-1.png",
                  label: "Entrar com Google",
                  onTap: () async {
                    GoogleSignIn _googleSignIn = GoogleSignIn(
                      scopes: [
                        'email',
                        'https://www.googleapis.com/auth/contacts.readonly',
                      ],
                    );
                    try {
                      final response = await _googleSignIn.signIn();
                      print(response);
                    } catch (error) {
                      print(error);
                    }
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                SocialButton(
                  imagePath: "assets/images/apple-1.png",
                  label: "Entrar com Apple",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
