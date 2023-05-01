import 'dart:developer';

import 'package:flutter/material.dart';

class ThemeViewModel extends ValueNotifier<bool> {
  ThemeViewModel() : super(false);

  void changeTheme(bool isDarkTheme) {
    value = isDarkTheme;
    _debug();
  }

  void _debug() {
    log('Dark theme: $value');
  }
}
