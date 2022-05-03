import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _key = 'theme-is-dark';
const bool _default = false;

class ThemeNotifier extends ChangeNotifier {
  ThemeNotifier() {
    _get();
  }

  bool _isDark = _default;

  bool get isDark => _isDark;

  set isDark(bool value) {
    if (_isDark == value) {
      return;
    }
    _isDark = value;
    _set(value);
    notifyListeners();
  }

  _set(bool value) async =>
      (await SharedPreferences.getInstance()).setBool(_key, value);

  _get() async => _isDark =
      (await SharedPreferences.getInstance()).getBool(_key) ?? _default;
}
