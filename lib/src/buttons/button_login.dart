import 'package:flutter/material.dart';
import 'package:matule_ui_kit/src/themes/extensions.dart';
import 'package:matule_ui_kit/src/themes/palettes.dart';
class ButtonLogin extends StatelessWidget{
  final String text;
  final VoidCallback onPress;

  ButtonLogin({super.key, required this.text, required this.onPress});

  Widget build (BuildContext context){
    var _theme = CustomTheme(MainPalette());
    return Container(
      height: 60,
      width: double.infinity,
      child: TextButton(
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 32),
              Text(text, style: _theme.texts.title3_medium),
            ],
          ),
      ),
    );
  }
}