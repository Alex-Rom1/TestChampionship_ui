import 'package:flutter/material.dart';

abstract class Palette{
  abstract Color accent;
  abstract Color accent_inactive;
  abstract Color description;
  abstract Color black;
  abstract Color white;
  abstract Color error;
  abstract Color input_bg;
  abstract Color caption;
}

class MainPalette extends Palette {
  @override
  Color accent = Color(0xFF1A6FEE);

  @override
  Color accent_inactive = Color(0xFFC9D4FB);

  @override
  Color description = Color(0xFF7E7E9A);

  @override
  Color black = Color(0xFF000000);

  @override
  Color white = Color(0xFFFFFFFF);

  @override
  Color error = Color(0xFFFD3535);
  
  @override
  Color input_bg = Color(0xFFF5F5F9);
  
  @override
  Color caption = Color(0xFF939396);
}