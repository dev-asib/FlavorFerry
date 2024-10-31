import 'package:flavor_ferry/theme/app_colors/light_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_styles/button_styles/elevated_button_style.dart';
import 'package:flutter/material.dart';

class LightThemeElevatedButton {
  static ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ElevatedButtonStyle.elevatedButtonStyle(
        backgroundColor: LightShadeAppColors.themeColor,
        foregroundColor: LightShadeAppColors.whiteColor,
        textColor: LightShadeAppColors.whiteColor,
      ),
    );
  }
}
