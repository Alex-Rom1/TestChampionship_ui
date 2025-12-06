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

  final TextEditingController controller = TextEditingController();
  var theme = CustomTheme(MainPalette());

  @override
  Widget build (BuildContext context){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: theme.palette.input_stroke,
          ),
        ),
        filled: true,
        fillColor: theme.palette.input_bg,
        labelText: widget.hint,
        labelStyle: theme.texts.text_regular_caption,
      ),
    );
  }
}