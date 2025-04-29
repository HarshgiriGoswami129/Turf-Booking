import 'package:flutter/material.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();

class ThemeHelper {
  LightCodeColors themeColor() => _getThemeColors();

  LightCodeColors _getThemeColors() {
    return LightCodeColors();
  }
}

class LightCodeColors {
  Color get transparent => Colors.transparent;
  Color get white => Colors.white;
  Color get primaryColor => Color(0xFF0E1622);
  Color get secondoryColor => Color(0xFF97D5E0);
  Color get buttonBorderColor => Color(0xFF0E1622);
  Color get primaryBorderColor => Color.fromARGB(255, 181, 181, 181);
}
