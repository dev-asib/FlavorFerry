import 'package:flavor_ferry/theme/app_colors/dark_shade_app_colors.dart';
import 'package:flavor_ferry/theme/app_styles/input_decoration_style/input_decoration_style.dart';
import 'package:flutter/material.dart';

class DarkThemeInputDecoration {
  static InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: DarkShadeAppColors.lightPinkColor,
      border: InputDecorationStyle.outlineInputBorder(),
      enabledBorder: InputDecorationStyle.outlineInputBorder(),
      errorBorder: InputDecorationStyle.outlineInputBorder(),
      focusedBorder: InputDecorationStyle.outlineInputBorder(),
      focusedErrorBorder: InputDecorationStyle.outlineInputBorder(),
      hintStyle: InputDecorationStyle.hintTextStyle(
          hintTextColor: DarkShadeAppColors.textFormFieldHintTextColor),
      labelStyle: InputDecorationStyle.labelTextStyle(
          labelTextColor: DarkShadeAppColors.textFormFieldLabelTextColor),
    );
  }
}
