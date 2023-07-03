// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:app_value_notifier/src/dependency_injector/dependency_injector.dart';
import 'package:app_value_notifier/src/features/bottom/views/bottom_view.dart';
import 'package:app_value_notifier/src/features/counter/views/counter_view.dart';
import 'package:app_value_notifier/src/features/items/views/item_view.dart';
import 'package:app_value_notifier/src/features/settings/views/setting_view.dart';

void main() {
  group('BottomView', () {
    testWidgets('BottomView should change tabs', (WidgetTester tester) async {
      const widget = MaterialApp(
        home: DependencyInjector(
          child: BottomView(),
        ),
      );

      final counterView = find.byType(CounterView);
      final itemsView = find.byType(ItemsView);
      final settingView = find.byType(SettingView);
      final listIcon = (find.byIcon(Icons.list_alt_outlined));
      final settingsIcon = (find.byIcon(Icons.settings_outlined));

      await tester.pumpWidget(widget);

      expect(counterView, findsOneWidget);
      expect(itemsView, findsNothing);
      expect(settingView, findsNothing);

      await tester.tap(listIcon);
      await tester.pumpAndSettle();

      expect(counterView, findsNothing);
      expect(itemsView, findsOneWidget);
      expect(settingView, findsNothing);

      await tester.tap(settingsIcon);
      await tester.pumpAndSettle();

      expect(counterView, findsNothing);
      expect(itemsView, findsNothing);
      expect(settingView, findsOneWidget);
    });
  });
}
