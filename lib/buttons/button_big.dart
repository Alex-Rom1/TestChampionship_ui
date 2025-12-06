import 'package:flutter/material.dart';

class ButtonBig extends StatelessWidget {
  final String text;
  final TextStyle text_style;
  final Color color_bg;
  final VoidCallback onPressed;

  ButtonBig({
    super.key,
    required this.text,
    required this.text_style,
    required this.color_bg,
    required this.onPressed,
  });

  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: text_style),
        style: TextButton.styleFrom(
          backgroundColor: color_bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
      ),
    );
  }
}
