import 'package:app_value_notifier/src/features/settings/view_model/setting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeViewModel>().value;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Settings'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.brightness_6_outlined),
              title: const Text('Dark theme'),
              trailing: Switch(
                value: isDarkMode,
                onChanged: (bool enabled) {
                  context.read<ThemeViewModel>().changeTheme(enabled);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
