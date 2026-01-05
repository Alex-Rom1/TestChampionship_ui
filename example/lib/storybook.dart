import 'package:matule_ui_kit/matule_ui_kit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:flutter/material.dart';

class StoryBookApp extends StatelessWidget {
  const StoryBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        BigButtonWidget.story,
        MediumButtonWidget.story,
        SmallButtonWidget.story,
        ChipsButtonWidget.story,
      ],
      wrapperBuilder: (BuildContext context, Widget? widget) =>
          MaterialAppWrapper(widget: widget),
    );
  }
}
