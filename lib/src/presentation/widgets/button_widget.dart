import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule_ui_kit/matule_ui_kit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

abstract class BaseButtonWidget extends StatelessWidget {
  final CustomTheme theme;
  final Function()? onTap;
  final Color backgroundColor;
  final Color? disabledBackgroundColor;
  final Color strokeColor;
  final Color textColor;
  final Color disabledTextColor;
  final String text;

  const BaseButtonWidget({
    super.key,
    required this.theme,
    required this.onTap,
    required this.backgroundColor,
    required this.disabledBackgroundColor,
    required this.strokeColor,
    required this.textColor,
    required this.disabledTextColor,
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
            color: onTap != null
                ? textColor
                : disabledTextColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

class BigButtonWidget extends BaseButtonWidget {
  const BigButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.disabledTextColor,
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

  BigButtonWidget.filled({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.accent,
         disabledBackgroundColor: theme.palette.accentInactive,
         strokeColor: Colors.transparent,
         textColor: theme.palette.white,
         disabledTextColor: theme.palette.white
       );

  BigButtonWidget.outline({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: Colors.transparent,
         disabledBackgroundColor: Colors.transparent,
         strokeColor: theme.palette.accent,
         textColor: theme.palette.accent,
         disabledTextColor: theme.palette.accentInactive
       );
  static Story get story => Story(
    name: 'Big Button',
    builder: (BuildContext context){
      var theme = CustomTheme.of(context);
      String text = context.knobs.text(label: 'Text', initial: "test text");
      int type = context.knobs.options(label: "Button Type", initial: 0, options: [
        Option(label: 'Filled', value: 0),
        Option(label: 'Outline', value: 1)
      ]);
      bool active = context.knobs.boolean(label: 'Active', initial: true);

      void onTap (){
        debugPrint('Big button pressed');
      }

      switch(type){
        case 0:
          return BigButtonWidget.filled(theme: theme, onTap: active ? onTap : null, text: text);
        case _:
          return BigButtonWidget.outline(theme: theme, onTap: active ? onTap : null, text: text);
      }
    }
  );
}

class MediumButtonWidget extends BaseButtonWidget {
  const MediumButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.disabledTextColor,
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

  MediumButtonWidget.filled({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.accent,
         disabledBackgroundColor: theme.palette.accentInactive,
         strokeColor: Colors.transparent,
         textColor: theme.palette.white,
         disabledTextColor: theme.palette.white
       );

  MediumButtonWidget.outline({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: Colors.transparent,
         disabledBackgroundColor: Colors.transparent,
         strokeColor: theme.palette.accent,
         textColor: theme.palette.accent,
         disabledTextColor: theme.palette.accentInactive
       );

  MediumButtonWidget.simple({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: Colors.transparent,
         disabledBackgroundColor: Colors.transparent,
         strokeColor: Colors.transparent,
         textColor: theme.palette.black,
         disabledTextColor: theme.palette.description,
       );
}

class SmallButtonWidget extends BaseButtonWidget {
  const SmallButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.disabledTextColor,
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

  SmallButtonWidget.filled({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
    backgroundColor: theme.palette.accent,
    disabledBackgroundColor: theme.palette.accentInactive,
    strokeColor: Colors.transparent,
    textColor: theme.palette.white,
    disabledTextColor: theme.palette.white
  );

  SmallButtonWidget.outline({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
    backgroundColor: Colors.transparent,
    disabledBackgroundColor: null,
    strokeColor: theme.palette.accent,
    textColor: theme.palette.accent,
    disabledTextColor: theme.palette.accentInactive
  );
}

class ChipsButtonWidget extends BaseButtonWidget {
  const ChipsButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.disabledTextColor,
    required super.text,
  });

  @override
  double get height => 48.h;

  @override
  EdgeInsets get padding =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);

  @override
  TextStyle get textStyle => theme.texts.textMedium15;

  @override
  double? get width => null;

  ChipsButtonWidget.standart({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
    backgroundColor: theme.palette.accent,
    disabledBackgroundColor: Colors.transparent,
    strokeColor: Colors.transparent,
    textColor: theme.palette.white,
    disabledTextColor: theme.palette.description,
  );
}
