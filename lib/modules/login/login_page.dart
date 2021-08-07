import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida contas com seus amigos",
                    style: GoogleFonts.montserrat(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.colors.title),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Text(
                  "😍",
                  style: GoogleFonts.inter(
                      fontSize: 40, fontWeight: FontWeight.w400),
                ),
                title: Text(
                  "Faça seu login com as contas abaixo",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.colors.button),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          AppTheme.colors.backgroundPrimary)),
                  onPressed: () {},
                  icon: Image.asset("assets/images/google-icon-1.png"),
                  label: Text(
                    "Entrar com Google",
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.colors.button),
                  )),
              SizedBox(
                height: 12,
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          AppTheme.colors.backgroundPrimary)),
                  onPressed: () {},
                  icon: Image.asset("assets/images/apple-1.png"),
                  label: Text(
                    "Entrar com Apple",
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.colors.button),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
