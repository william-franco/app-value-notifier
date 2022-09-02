import 'dart:developer';

import 'package:flutter/material.dart';

// global instance.
final counterNotifier = CounterNotifier();

class CounterNotifier extends ValueNotifier<int> {
  CounterNotifier() : super(0);

  void increment() {
    value++;
    _debugNotifier();
    notifyListeners();
  }

  void decrement() {
    value--;
    _debugNotifier();
    notifyListeners();
  }

  void _debugNotifier() {
    log('Counter: $value');
  }
}
