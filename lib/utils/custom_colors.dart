import 'package:flutter/material.dart';
import 'package:hello_world/enums/theme_type.dart';

class CustomColors {
  static Color get mainBlue => const Color(0xFF4B5EFC);

  static Color get secondaryBlue => const Color(0xFF2337E3);

  static Color textColor(ThemeType theme) {
    return theme == ThemeType.light ? Colors.black : Colors.white;
  }

  static Color background(ThemeType theme) {
    return theme == ThemeType.light
        ? const Color(0xFFF1F2F3)
        : const Color(0xFF2E2F38);
  }

  static Color tertiary(ThemeType theme) {
    return theme == ThemeType.light
        ? const Color(0xFFD2D3DA)
        : const Color(0xFF4E505F);
  }
}
