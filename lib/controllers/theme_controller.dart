import 'package:flutter/material.dart';

import '../enums/theme_type.dart';

class ThemeController extends ValueNotifier<ThemeType> {
  ThemeController(super.initialThemeType);

  ThemeType get themeType => value;

  void toggleTheme() {
    value = value == ThemeType.light ? ThemeType.dark : ThemeType.light;
    notifyListeners();
  }

  bool isDark() => value == ThemeType.dark;

  bool isLight() => value == ThemeType.light;

  ThemeData getTheme() {
    return value == ThemeType.light ? ThemeData.light() : ThemeData.dark();
  }

  static final ThemeController instance = ThemeController(ThemeType.dark);
}
