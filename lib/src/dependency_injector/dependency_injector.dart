// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:app_value_notifier/src/features/bottom/view_models/bottom_view_model.dart';
import 'package:app_value_notifier/src/features/counter/view_models/counter_view_model.dart';
import 'package:app_value_notifier/src/features/items/view_model/item_view_model.dart';
import 'package:app_value_notifier/src/features/settings/view_model/setting_notifier.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ItemsViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeViewModel(),
        ),
      ],
      child: child,
    );
  }
}
