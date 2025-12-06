import 'package:flutter/material.dart';
import 'package:matule_ui_kit/src/themes/palettes.dart';
import 'package:matule_ui_kit/src/themes/extensions.dart';

class InputStandart extends StatefulWidget{
  final String hint;

  InputStandart({
    super.key,
    required this.hint,
  });

  State<StatefulWidget> createState() => _InputStandartState();
}

class _InputStandartState extends State<InputStandart>{

  bool _cantSeePass = true;
  final TextEditingController controller = TextEditingController();
  var _theme = CustomTheme(MainPalette());

  @override
  Widget build (BuildContext context){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: _theme.palette.input_stroke,
          ),
        ),
        filled: true,
        fillColor: _theme.palette.input_bg,
        labelText: widget.hint,
        labelStyle: _theme.texts.text_regular_caption,
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _cantSeePass = !_cantSeePass;
            });
          },
          icon: _cantSeePass ? Icon(Icons.visibility_off_outlined, color: _theme.palette.black,) : Icon(Icons.visibility_outlined, color: _theme.palette.black),
        ),
      ),
      obscureText: _cantSeePass,
      style: _theme.texts.headline_regular,
    );
  }
}