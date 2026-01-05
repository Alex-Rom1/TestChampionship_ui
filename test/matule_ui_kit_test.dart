import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matule_ui_kit/matule_ui_kit.dart';

void main() {
  group('Widgets', () {
    testWidgets('BigButtonWidget', (WidgetTester tester) async {
      late CustomTheme theme;
      final String text = 'TestString';
      await tester.pumpWidget(
        MaterialAppWrapper(
          widget: Builder(
            builder: (BuildContext context) {
              theme = CustomTheme.of(context);
              return BigButtonWidget.filled(
                theme: theme,
                onTap: () {},
                text: text,
              );
            },
          ),
        ),
      );
      Text textWidget = tester.firstWidget(find.byType(Text));
      expect(textWidget.data, text, reason: 'text');

      FilledButton testBtn = tester.firstWidget(find.byType(FilledButton));
      expect(
        testBtn.style!.backgroundColor?.resolve({}),
        theme.palette.accent,
        reason: 'color',
      );
      await tester.restoreFrom(TestRestorationData.empty);
    });

    testWidgets('MediumButtonWidget', (WidgetTester tester) async {
      late CustomTheme theme;
      final String text = 'TestString';
      await tester.pumpWidget(
        MaterialAppWrapper(
          widget: Builder(
            builder: (BuildContext context) {
              theme = CustomTheme.of(context);
              return MediumButtonWidget.filled(
                theme: theme,
                onTap: null,
                text: text,
              );
            },
          ),
        ),
      );
      Text textWidget = tester.firstWidget(find.byType(Text));
      expect(textWidget.data, text, reason: 'text');
      FilledButton testBtn = tester.firstWidget(find.byType(FilledButton));
      expect(
        testBtn.style!.backgroundColor?.resolve({WidgetState.disabled}),
        theme.palette.accentInactive,
        reason: 'Inactivity',
      );
      await tester.restoreFrom(TestRestorationData.empty);
    });

    testWidgets('SmallButtonWidget', (WidgetTester tester) async {
      late CustomTheme theme;
      final String text = 'TestString';
      await tester.pumpWidget(
        MaterialAppWrapper(
          widget: Builder(
            builder: (BuildContext context) {
              theme = CustomTheme.of(context);
              return SmallButtonWidget.filled(
                theme: theme,
                onTap: () {},
                text: text,
              );
            },
          ),
        ),
      );
      Text textWidget = tester.firstWidget(find.byType(Text));
      expect(textWidget.data, text, reason: 'text');
      FilledButton testBtn = tester.firstWidget(find.byType(FilledButton));
      expect(
        testBtn.style!.backgroundColor?.resolve({}),
        theme.palette.accent,
        reason: 'color',
      );
      await tester.restoreFrom(TestRestorationData.empty);
    });

    testWidgets('ChipsButtonWidget', (WidgetTester tester) async {
      late CustomTheme theme;
      final String text = 'TestString';
      await tester.pumpWidget(
        MaterialAppWrapper(
          widget: Builder(
            builder: (BuildContext context) {
              theme = CustomTheme.of(context);
              return ChipsButtonWidget.standart(
                theme: theme,
                onTap: () {},
                text: text,
              );
            },
          ),
        ),
      );
      Text textWidget = tester.firstWidget(find.byType(Text));
      expect(textWidget.data, text, reason: 'text');
      FilledButton testBtn = tester.firstWidget(find.byType(FilledButton));
      expect(
        testBtn.style!.backgroundColor?.resolve({}),
        theme.palette.accent,
        reason: 'color',
      );
      await tester.restoreFrom(TestRestorationData.empty);
    });
  });
}
