import 'package:flutter/material.dart';
import 'package:turf_booking/theme/app_theme.dart';

extension on TextStyle {
  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }
}

class CustomTextStyles {
  static get titleExtraBold => TextStyle(
        color: appTheme.black,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ).raleway;
  static get bodyBold => TextStyle(
        color: appTheme.white,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ).raleway;
  static get bodyButtonBold => TextStyle(
        color: appTheme.white,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ).raleway;
}
