// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_value_notifier/src/features/settings/models/setting_model.dart';

abstract base class SettingViewModel extends ValueNotifier<SettingModel> {
  SettingViewModel() : super(SettingModel());

  void updateTheme({required bool isDarkTheme});
}

base class SettingViewModelImpl extends ValueNotifier<SettingModel>
    implements SettingViewModel {
  SettingViewModelImpl() : super(SettingModel());

  @override
  void updateTheme({required bool isDarkTheme}) {
    value.isDarkTheme = isDarkTheme;
    _debug();
  }

  void _debug() {
    log('Dark theme: ${value.isDarkTheme}');
  }
}
