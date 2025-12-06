import 'package:flutter/material.dart';

class InputStandart extends StatefulWidget{
  final String hint;
  final Color color_border;
  final TextStyle hint_style;

  InputStandart({
    super.key,
    required this.hint,
    required this.color_border,
    required this.hint_style,
  });

  State<StatefulWidget> createState() => _InputStandartState();
}

class _InputStandartState extends State<InputStandart>{
  @override
  Widget build (BuildContext context){
    return TextField(
      decoration: ,
    );
  }
}