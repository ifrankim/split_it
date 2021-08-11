import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final String label;

  const SocialButton({
    Key? key,
    required this.imagePath,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border:
              Border.fromBorderSide(BorderSide(color: AppTheme.colors.border))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(imagePath),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 1,
                  color: AppTheme.colors.border,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  label,
                  style: AppTheme.textStyles.button,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
