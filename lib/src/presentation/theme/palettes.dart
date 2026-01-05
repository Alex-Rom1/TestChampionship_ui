import 'package:flutter/material.dart';

abstract class Palette {
  abstract Color accent;
  abstract Color accentInactive;
  abstract Color black;
  abstract Color white;
  abstract Color error;
  abstract Color caption;
  abstract Color description;
  abstract Color inputStroke;
}

class LightPalette extends Palette {
  @override
  Color accent = Color(0xFF1A6FEE);

  @override
  Color accentInactive = Color(0xFFC9D4FB);

  @override
  Color black = Color(0xFF000000);

  @override
  Color caption = Color(0xFF939396);

  @override
  Color description = Color(0xFF7E7E9A);

  @override
  Color error = Color(0xFFFD3535);

  @override
  Color white = Color(0xFFFFFFFF);

  @override
  Color inputStroke = Color(0xFFEBEBEB);
}
