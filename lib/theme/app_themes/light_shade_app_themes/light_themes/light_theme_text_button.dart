import 'package:flavor_ferry/theme/app_colors/light_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_styles/button_styles/text_button_style.dart';
import 'package:flutter/material.dart';

class LightThemeTextButton {
  static TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: TextButtonStyle.textButtonStyle(
        foregroundColor: LightShadeAppColors.themeColor,
        textColor: LightShadeAppColors.themeColor,
      ),
    );
  }
}
