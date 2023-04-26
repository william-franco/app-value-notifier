import 'dart:developer';

import 'package:flutter/material.dart';

class ThemeViewModel extends ValueNotifier<bool> {
  ThemeViewModel() : super(false);

  void changeTheme(bool darkTheme) {
    value = darkTheme;
    _debug();
  }

  void _debug() {
    log('Dark theme: $value');
  }
}
