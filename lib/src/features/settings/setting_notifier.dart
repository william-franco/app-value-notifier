import 'dart:developer';

import 'package:flutter/material.dart';

// global instance.
final themeNotifier = ThemeNotifier();

class ThemeNotifier extends ValueNotifier<bool> {
  ThemeNotifier() : super(false);

  void changeTheme(bool darkTheme) {
    value = darkTheme;
    _debugNotifier();
  }

  void _debugNotifier() {
    log('Dark theme: $value');
  }
}
