import 'package:flutter/material.dart';
import 'palettes.dart';

class Texts{
  final Palette palette;

  Texts({required this.palette});

  TextStyle get title3_semibold_white => TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 17,
    height: 24,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    color: palette.white,
  );

  TextStyle get title3_semibold_accent => TextStyle(
      fontFamily: 'SF Pro Display',
      fontSize: 17,
      height: 24,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      color: palette.accent,
  );

  TextStyle get title3_medium => TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 17,
    height: 24,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    color: palette.black,
  );

  TextStyle get caption_regular => TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 14,
    height: 20,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    color: palette.caption,
  );

  TextStyle get text_regular => TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 15,
    height: 20,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    color: palette.black,
  );

  TextStyle get text_regular_caption => TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 15,
    height: 20,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    color: palette.caption,
  );

  TextStyle get headline_regular => TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: 16,
    height: 20,
    letterSpacing: -0.32,
    fontWeight: FontWeight.w400,
    color: palette.black,
  );
}