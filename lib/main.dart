import 'package:app_value_notifier/src/dependency_injector/dependency_injector.dart';
import 'package:app_value_notifier/src/features/settings/view_model/setting_notifier.dart';
import 'package:app_value_notifier/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const DependencyInjector(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeViewModel>().value;
    return MaterialApp.router(
      title: 'App ValueNotifier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      routerConfig: routesApp.routes,
    );
  }
}
