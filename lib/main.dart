import 'package:app_value_notifier/src/features/bottom/bottom_view.dart';
import 'package:app_value_notifier/src/features/settings/setting_notifier.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, value, widget) {
        return MaterialApp(
          title: 'Flutter',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: value ? ThemeMode.dark : ThemeMode.light,
          home: const BottomView(),
        );
      },
    );
  }
}
