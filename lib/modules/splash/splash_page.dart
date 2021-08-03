import 'package:flutter/material.dart';
import 'package:split_it/theme/app_gradients.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppTheme.colors.background,
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.gradients.background),
        child: Center(
          child: Image.asset(
            "assets/images/Logo.png",
            width: 128,
            height: 112,
          ),
        ),
      ),
    );
  }
}
