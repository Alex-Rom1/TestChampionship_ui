import 'package:flutter/material.dart';
import 'package:matule_ui_kit/matule_ui_kit.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Texts texts;

  CustomTheme({required this.palette}) : texts = Texts(palette: palette);

  @override
  ThemeExtension<CustomTheme> copyWith() {
    return CustomTheme(palette: palette);
  }

  @override
  ThemeExtension<CustomTheme> lerp(
    covariant ThemeExtension<CustomTheme>? other,
    double t,
  ) {
    return this;
  }

  static CustomTheme of(BuildContext context) =>
      Theme.of(context).extension<CustomTheme>()!;
}
