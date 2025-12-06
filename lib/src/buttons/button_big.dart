import 'package:flutter/material.dart';
import 'package:matule_ui_kit/src/themes/extensions.dart';
import 'package:matule_ui_kit/src/themes/palettes.dart';

class ButtonBig extends StatefulWidget {
  final String text;
  final TextStyle text_style;
  final VoidCallback onPressed;

  ButtonBig({
    super.key,
    required this.text,
    required this.text_style,
    required this.onPressed,
  });

  @override
  State<StatefulWidget> createState() => _ButtonBigState();
}

class _ButtonBigState extends State<ButtonBig>{

  bool is_enabled = false;
  var _theme = CustomTheme(MainPalette());

  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: is_enabled? widget.onPressed : null,
        child: Text(widget.text, style: widget.text_style),
        style: TextButton.styleFrom(
          backgroundColor: is_enabled? _theme.palette.accent : _theme.palette.accent_inactive,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
      ),
    );
  }
}
