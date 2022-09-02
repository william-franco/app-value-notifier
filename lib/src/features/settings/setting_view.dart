import 'package:app_value_notifier/src/features/settings/setting_notifier.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Settings'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            ValueListenableBuilder<bool>(
              valueListenable: themeNotifier,
              builder: (context, value, widget) {
                return ListTile(
                  leading: const Icon(Icons.brightness_6_outlined),
                  title: const Text('Dark theme'),
                  trailing: Switch(
                    value: value,
                    onChanged: (bool enabled) {
                      themeNotifier.changeTheme(enabled);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
