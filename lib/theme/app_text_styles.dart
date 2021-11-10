import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get text;
  TextStyle get button;
  TextStyle get textBold;
}

class AppTextStyleDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.montserrat(
      fontSize: 40, fontWeight: FontWeight.w700, color: AppTheme.colors.title);

  @override
  TextStyle get button => GoogleFonts.inter(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.colors.button);

  @override
  TextStyle get text => GoogleFonts.inter(
      fontSize: 20, fontWeight: FontWeight.w400, color: AppTheme.colors.white);

  @override
  TextStyle get textBold => GoogleFonts.inter(
      fontSize: 20, fontWeight: FontWeight.w700, color: AppTheme.colors.white);
}
