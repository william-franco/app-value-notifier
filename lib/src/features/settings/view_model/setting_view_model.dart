// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

abstract base class SettingViewModel extends ValueNotifier<bool> {
  SettingViewModel() : super(false);

  void updateTheme({required bool isDarkTheme});
}

base class SettingViewModelImpl extends ValueNotifier<bool>
    implements SettingViewModel {
  SettingViewModelImpl() : super(false);

  @override
  void updateTheme({required bool isDarkTheme}) {
    value = isDarkTheme;
    _debug();
  }

  void _debug() {
    log('Dark theme: $value');
  }
}
