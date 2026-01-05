import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule_ui_kit/matule_ui_kit.dart';

class Texts {
  final Palette palette;

  Texts({required this.palette});

  TextStyle get title3Semibold17 => TextStyle(
    color: palette.black,
    fontSize: 17.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 24 / 17,
  );

  TextStyle get regular15 => TextStyle(
    color: palette.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 20 / 15,
  );
}
