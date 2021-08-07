import 'package:flutter/material.dart';

abstract class AppColorsBase {
  Color get backgroundSecondary;
  Color get backgroundPrimary;
  Color get title;
  Color get button;
}

class AppColorsDefault implements AppColorsBase {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);
}
