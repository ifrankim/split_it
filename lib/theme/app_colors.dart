import 'dart:html';

import 'package:flutter/material.dart';

abstract class AppColorsBase {
  Color get background;
}

class AppColorsDefault implements AppColorsBase {
  @override
  Color get background => Color(0xFF40B38C);
}
