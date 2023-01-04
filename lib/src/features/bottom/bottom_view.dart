import 'package:app_value_notifier/src/features/bottom/bottom_notifier.dart';
import 'package:app_value_notifier/src/features/counter/counter_view.dart';
import 'package:app_value_notifier/src/features/items/item_view.dart';
import 'package:app_value_notifier/src/features/settings/setting_view.dart';
import 'package:flutter/material.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  final _tabs = [
    const CounterView(),
    const ItemsView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNotifier,
      builder: (context, value, widget) {
        return Scaffold(
          body: _tabs[value],
          bottomNavigationBar: NavigationBar(
            selectedIndex: value,
            animationDuration: const Duration(milliseconds: 600),
            onDestinationSelected: (int index) {
              bottomNotifier.updateTab(index);
            },
            destinations: const <NavigationDestination>[
              NavigationDestination(
                icon: Icon(Icons.add_home_outlined),
                label: 'Counter',
              ),
              NavigationDestination(
                icon: Icon(Icons.list_alt_outlined),
                label: 'List',
              ),
              NavigationDestination(
                icon: Icon(Icons.settings_outlined),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
