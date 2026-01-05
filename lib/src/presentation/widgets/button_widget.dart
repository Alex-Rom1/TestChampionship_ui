import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule_ui_kit/matule_ui_kit.dart';

abstract class BaseButtonWidget extends StatelessWidget {
  final CustomTheme theme;
  final Function()? onTap;
  final Color backgroundColor;
  final Color? disabledBackgroundColor;
  final Color strokeColor;
  final Color textColor;
  final String text;

  const BaseButtonWidget({
    super.key,
    required this.theme,
    required this.onTap,
    required this.backgroundColor,
    required this.disabledBackgroundColor,
    required this.strokeColor,
    required this.textColor,
    required this.text,
  });

  @protected
  double? get width;

  @protected
  double get height;

  @protected
  TextStyle get textStyle;

  @protected
  EdgeInsets get padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          padding: padding,
          backgroundColor: onTap != null
              ? backgroundColor
              : disabledBackgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: strokeColor, width: 1.w),
            borderRadius: BorderRadiusGeometry.circular(10.w),
          ),
        ),
        child: Text(
          text,
          style: textStyle.copyWith(
            color: textColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

class BigButtonWidget extends BaseButtonWidget {
  const BigButtonWidget({
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.text,
  });

  @override
  double get height => 56.h;

  @override
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);

  @override
  TextStyle get textStyle => theme.texts.title3Semibold17;

  @override
  double? get width => 335.w;
}

class MediumButtonWidget extends BaseButtonWidget {
  const MediumButtonWidget({
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.text,
  });

  @override
  double get height => 48.h;

  @override
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);

  @override
  TextStyle get textStyle => theme.texts.textRegular15;

  @override
  double? get width => 335.w;
}

class SmallButtonWidget extends BaseButtonWidget {
  const SmallButtonWidget({
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.text,
  });

  @override
  double get height => 40.h;

  @override
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 26.h);

  @override
  TextStyle get textStyle => theme.texts.captionSemibold14;

  @override
  double? get width => 96.w;
}

class ChipsButtonWidget extends BaseButtonWidget {
  const ChipsButtonWidget({
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.text,
  });

  @override
  double get height => 48.h;

  @override
  EdgeInsets get padding => EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);

  @override
  TextStyle get textStyle => theme.texts.textMedium15;

  @override
  double? get width => null;
}
