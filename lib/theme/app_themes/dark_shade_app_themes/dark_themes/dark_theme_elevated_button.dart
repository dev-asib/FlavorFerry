import 'package:flavor_ferry/theme/app_colors/dark_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_styles/button_styles/elevated_button_style.dart';
import 'package:flutter/material.dart';

class DarkThemeElevatedButton {
  static ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ElevatedButtonStyle.elevatedButtonStyle(
        backgroundColor: DarkShadeAppColors.themeColor,
        foregroundColor: DarkShadeAppColors.whiteColor,
        textColor: DarkShadeAppColors.whiteColor,
      ),
    );
  }
}
