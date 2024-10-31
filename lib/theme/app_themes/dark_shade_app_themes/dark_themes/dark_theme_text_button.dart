import 'package:flavor_ferry/theme/app_colors/dark_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_styles/button_styles/text_button_style.dart';
import 'package:flutter/material.dart';

class DarkThemeTextButton {
  static TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: TextButtonStyle.textButtonStyle(
        foregroundColor: DarkShadeAppColors.themeColor,
        textColor: DarkShadeAppColors.themeColor,
      ),
    );
  }
}
